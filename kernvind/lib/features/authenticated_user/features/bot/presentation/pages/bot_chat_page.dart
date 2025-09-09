import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kernvind/core/providers/jwt_token_parse/jwt_token_parse.dart';
import 'package:kernvind/core/widgets/app_bar.dart';
import 'package:kernvind/features/authenticated_user/features/bot/domain/entities/bot_chat_entity.dart';
import 'package:kernvind/features/authenticated_user/features/bot/presentation/providers/bot_chat_provider.dart';
import 'package:kernvind/features/authenticated_user/features/bot/presentation/widgets/chat_bubble.dart';
import 'package:kernvind/routes/auto_route_router.gr.dart';

@RoutePage()
class BotChatPage extends ConsumerStatefulWidget {
  final int botId;
  final String botName;
  const BotChatPage(
      {super.key,
      @PathParam('id') required this.botId,
      @PathParam('name') required this.botName});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BotChatPageState();
}

class _BotChatPageState extends ConsumerState<BotChatPage> {
  final ScrollController scrollController = ScrollController();
  final FocusNode focusNode = FocusNode();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<BotChatEntity> chatList = [];
    final botChatState = ref.watch(botChatMessageProvider(botId: widget.botId));
    if (botChatState.hasValue) {
      if (botChatState.value != null) {
        chatList = botChatState.value!.reversed.toList();
      }
    }
    if (botChatState.hasError) {
      if (botChatState.error! is String) {
        final err = botChatState.error! as String;
        if (err.contains('closed due to inactivity')) {
          //ref.invalidate(botChatMessageProvider);
        }
      }
    }
    final decodeTokenState = ref.watch(accessTokenDecodeProvider);
    return decodeTokenState.when(
        data: (state) {
          if (state is DecodeTokenState) {
            final userId = state.decodedToken.identity;
            return Scaffold(
              appBar: appBar(
                title: widget.botName,
                context: context,
                backButton: true,
                showLogoutAction: false,
                actionsList: [
                  IconButton(
                      color: Theme.of(context).colorScheme.tertiaryFixed,
                      onPressed: () {
                        AutoRouter.of(context)
                            .push(BotDetailRoute(botId: widget.botId));
                      },
                      tooltip: 'Bot details',
                      icon: Icon(
                        Icons.navigate_next,
                        color: Theme.of(context).colorScheme.onSurface,
                      ))
                ],
              ),
              body: botChatState.hasError
                  ? Center(
                      child: botChatState.error! is String
                          ? Text(
                              botChatState.error! as String,
                              style: TextStyle(
                                  color: Theme.of(context).colorScheme.error),
                            )
                          : Text(
                              'Something went wrong, please try again',
                              style: TextStyle(
                                  color: Theme.of(context).colorScheme.error),
                            ))
                  : Column(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              focusNode.unfocus();
                            },
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: ListView.separated(
                                shrinkWrap: true,
                                reverse: true,
                                controller: scrollController,
                                padding: const EdgeInsets.only(
                                        top: 12, bottom: 20) +
                                    const EdgeInsets.symmetric(horizontal: 12),
                                separatorBuilder: (_, __) => const SizedBox(
                                  height: 12,
                                ),
                                itemCount: chatList.length,
                                itemBuilder: (context, index) {
                                  return ChatBubble(
                                    message: chatList[index],
                                    currentUser: userId,
                                    botName: widget.botName,
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                        _BottomInputField(
                          focusNode: focusNode,
                          scrollController: scrollController,
                          user: userId,
                          botId: widget.botId,
                        ),
                      ],
                    ),
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
        error: (error, st) => Center(
                child: Text(
              'Something went wrong please try again',
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            )),
        loading: () => const CircularProgressIndicator());
  }
}

/// Bottom Fixed Filed
class _BottomInputField extends ConsumerStatefulWidget {
  final FocusNode focusNode;
  final ScrollController scrollController;
  final int user;
  final int botId;
  const _BottomInputField(
      {required this.focusNode,
      required this.scrollController,
      required this.user,
      required this.botId});

  @override
  ConsumerState<_BottomInputField> createState() => _BottomInputFieldState();
}

class _BottomInputFieldState extends ConsumerState<_BottomInputField> {
  final messageTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      child: Container(
        constraints: const BoxConstraints(minHeight: 48, maxHeight: 300),
        width: double.infinity,
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Color(0xFFE5E5EA),
            ),
          ),
        ),
        child: Stack(
          children: [
            TextField(
              focusNode: widget.focusNode,
              controller: messageTextController,
              maxLines: null,
              textAlignVertical: TextAlignVertical.top,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: const EdgeInsets.only(
                  right: 42,
                  left: 16,
                  top: 18,
                ),
                hintText: 'Message',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            // custom suffix btn
            Positioned(
              bottom: 0,
              right: 0,
              child: IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {
                    if (messageTextController.text.isNotEmpty) {
                      setState(() {});
                      widget.scrollController.animateTo(
                        0,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                      ref
                          .read(botChatMessageProvider(botId: widget.botId)
                              .notifier)
                          .sendMessage(BotChatEntity(
                              messageText: messageTextController.text,
                              botId: widget.botId,
                              userIdIn: widget.user));
                    }
                    messageTextController.text = '';
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
