import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:kernvind/core/widgets/app_bar.dart';
import 'package:kernvind/core/widgets/floating_button.dart';
import 'package:kernvind/features/authenticated_user/features/bot/domain/entities/bot_entity.dart';
import 'package:kernvind/features/authenticated_user/features/bot/presentation/providers/bot_provider.dart';
import 'package:kernvind/features/authenticated_user/features/bot/presentation/providers/bot_provider_state.dart';
import 'package:kernvind/routes/auto_route_router.gr.dart';

@RoutePage()
class BotListPage extends ConsumerStatefulWidget {
  const BotListPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BotListState();
}

class _BotListState extends ConsumerState<BotListPage> {
  final String pageTitle = 'AI Bots';
  final String floatingBtnTooltip = 'Create bot';
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<BotEntity> botList = [];

    final botProvider = ref.watch(botProviderProvider);
    if (botProvider is BotCreateSuccessState) {
      botList = botProvider.bots;
    }
    if (botProvider is BotListSuccessState) {
      botList = botProvider.bots;
    }
    floatingPressed() {
      ref.read(botProviderProvider.notifier).setBotListState(botList);
      AutoRouter.of(context).push(const BotCreateRoute());
    }

    return Scaffold(
      floatingActionButton: AppFloatingButton(
          toolTip: floatingBtnTooltip, onPressed: floatingPressed),
      appBar: appBar(
        title: pageTitle,
        context: context,
        ref: ref,
      ),
      body: (botProvider is BotListSuccessState ||
                  botProvider is BotCreateSuccessState) &&
              botList.isEmpty
          ? const Center(
              child:
                  Text('No Bots. Click the create button to create a new bot.'),
            )
          : (botProvider is BotListSuccessState ||
                  botProvider is BotCreateSuccessState)
              ? RefreshIndicator(
                  onRefresh: () async {
                    return ref.read(botProviderProvider.notifier).getBotList();
                  },
                  child: ListView.builder(
                      itemCount: botList.length,
                      itemBuilder: (context, index) {
                        final bot = botList[index];
                        return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ListTile(
                                trailing: bot.canSeeLlm &&
                                        bot.llmName != null &&
                                        bot.userLlmName != null
                                    ? Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          const Icon(
                                            Icons.language_outlined,
                                            size: 16,
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(
                                                  '${bot.userLlmName!.substring(0, bot.userLlmName!.length < 10 ? bot.userLlmName!.length : 10)}...'),
                                              Text(
                                                  "${bot.llmTypeName}-${bot.llmName}")
                                            ],
                                          )
                                        ],
                                      )
                                    : null,
                                onTap: () {
                                  AutoRouter.of(context).push(BotChatRoute(
                                      botId: bot.botId!, botName: bot.botName));
                                },
                                titleAlignment: ListTileTitleAlignment.top,
                                leading: CircleAvatar(
                                  backgroundColor:
                                      Theme.of(context).colorScheme.onSecondary,
                                  child: const Icon(Icons.smart_toy_outlined),
                                ),
                                title: Text(
                                  bot.botName,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w200,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurface),
                                ),
                                subtitle: bot.canSeeDatasource &&
                                        bot.datasourceName != null
                                    ? Row(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Icon(
                                            Icons.dataset_linked_outlined,
                                            size: 17,
                                          ),
                                          Flexible(
                                              child: Text(bot.datasourceName!)),
                                        ],
                                      )
                                    : null,
                                isThreeLine: false,
                              ),
                            ]);
                      }),
                )
              : botProvider is BotListFailure
                  ? Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.error,
                          ),
                          botProvider.error.error,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  : const Center(
                      child: CircularProgressIndicator(),
                    ),
    );
  }
}
