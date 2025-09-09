import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kernvind/core/widgets/app_bar.dart';
import 'package:kernvind/features/playground/domain/entities/playground_chat_entity.dart';
import 'package:kernvind/features/playground/domain/entities/playground_llm_config_entity.dart';
import 'package:kernvind/features/playground/presentation/providers/playground_chat_provider.dart';
import 'package:kernvind/features/playground/presentation/providers/stream_state_provider.dart';
import 'package:kernvind/features/playground/presentation/widgets/chat_bubble.dart';

@RoutePage()
class PlaygroundChatPage extends ConsumerStatefulWidget {
  final String? token;
  final String? botId;
  final PlaygroundLlmConfigEntity? llmConfig;
  const PlaygroundChatPage({super.key, this.token, this.botId, this.llmConfig});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PlaygroundChatPageState();
}

class _PlaygroundChatPageState extends ConsumerState<PlaygroundChatPage> {
  final ScrollController scrollController = ScrollController();
  final FocusNode focusNode = FocusNode();

  @override
  void initState() {
    if (widget.token != null && widget.botId != null) {
      ref
          .read(
              playgroundChatProvider(botId: widget.botId!, token: widget.token!)
                  .notifier)
          .sendMessage(PlaygroundChatEntity(
              botId: widget.botId!,
              messageText: '',
              firstMessage: true,
              llmConfig: widget.llmConfig));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.token == null || widget.botId == null) {
      return Scaffold(
          appBar: appBar(
            title: 'Playground',
            context: context,
            backButton: true,
            showLogoutAction: false,
          ),
          body: Center(
              child: Text(
            'Session expired.',
            style: TextStyle(color: Theme.of(context).colorScheme.error),
          )));
    }
    final botId = widget.botId!;
    List<PlaygroundChatEntity> chatList = [];

    final botChatState =
        ref.watch(playgroundChatProvider(botId: botId, token: widget.token!));
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
    return Scaffold(
      appBar: appBar(
        title: 'Playground',
        context: context,
        backButton: true,
        showLogoutAction: false,
      ),
      body: botChatState.hasError
          ? Center(
              child: botChatState.error! is String
                  ? Text(
                      botChatState.error! as String,
                      style:
                          TextStyle(color: Theme.of(context).colorScheme.error),
                    )
                  : Text(
                      'Something went wrong, please try again',
                      style:
                          TextStyle(color: Theme.of(context).colorScheme.error),
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
                        padding: const EdgeInsets.only(top: 12, bottom: 20) +
                            const EdgeInsets.symmetric(horizontal: 12),
                        separatorBuilder: (_, __) => const SizedBox(
                          height: 12,
                        ),
                        itemCount: chatList.length,
                        itemBuilder: (context, index) {
                          return ChatBubble(
                            message: chatList[index],
                            botName: 'AI bot',
                          );
                        },
                      ),
                    ),
                  ),
                ),
                _BottomInputField(
                  focusNode: focusNode,
                  scrollController: scrollController,
                  token: widget.token!,
                  botId: botId,
                ),
              ],
            ),
    );
  }
}

/// Bottom Fixed Filed
class _BottomInputField extends ConsumerStatefulWidget {
  final FocusNode focusNode;
  final ScrollController scrollController;
  final String botId;
  final String token;
  const _BottomInputField(
      {required this.focusNode,
      required this.scrollController,
      required this.token,
      required this.botId});

  @override
  ConsumerState<_BottomInputField> createState() => _BottomInputFieldState();
}

class _BottomInputFieldState extends ConsumerState<_BottomInputField> {
  final messageTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final streamStateDone = ref.watch(streamStateProvider);
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
              child: streamStateDone == true
                  ? IconButton(
                      icon: const Icon(Icons.send),
                      onPressed: () {
                        ref
                            .read(streamStateProvider.notifier)
                            .setStreamNotDone();
                        if (messageTextController.text.trim().isNotEmpty) {
                          setState(() {});
                          widget.scrollController.animateTo(
                            0,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                          ref
                              .read(playgroundChatProvider(
                                      botId: widget.botId, token: widget.token)
                                  .notifier)
                              .sendMessage(PlaygroundChatEntity(
                                  messageText: messageTextController.text,
                                  botId: widget.botId,
                                  messageUserName: 'Guest'));
                        }
                        messageTextController.text = '';
                      })
                  : Container(),
            ),
          ],
        ),
      ),
    );
  }
}
