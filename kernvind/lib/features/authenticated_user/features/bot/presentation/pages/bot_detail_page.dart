import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kernvind/core/widgets/app_bar.dart';
import 'package:kernvind/features/authenticated_user/features/bot/domain/entities/bot_entity.dart';
import 'package:kernvind/features/authenticated_user/features/bot/domain/entities/bot_users_entity.dart';
import 'package:kernvind/features/authenticated_user/features/bot/presentation/providers/bot_details_edit.dart';
import 'package:kernvind/features/authenticated_user/features/bot/presentation/providers/bot_details_edit_state.dart';
import 'package:kernvind/features/authenticated_user/features/bot/presentation/providers/bot_details_provider.dart';
import 'package:kernvind/features/authenticated_user/features/bot/presentation/providers/bot_details_state.dart';
import 'package:kernvind/features/authenticated_user/features/bot/presentation/providers/bot_edit_mode_provider.dart';
import 'package:kernvind/features/authenticated_user/features/bot/presentation/providers/bot_provider.dart';
import 'package:kernvind/features/authenticated_user/features/bot/presentation/widgets/bot_datasource_change_widget.dart';
import 'package:kernvind/features/authenticated_user/features/bot/presentation/widgets/bot_edit_widget.dart';
import 'package:kernvind/features/authenticated_user/features/bot/presentation/widgets/bot_llm_change_widget.dart';
import 'package:kernvind/features/authenticated_user/features/bot/presentation/widgets/bot_user_add_widget.dart';
import 'package:kernvind/routes/auto_route_router.gr.dart';

@RoutePage()
class BotDetailPage extends ConsumerStatefulWidget {
  final int botId;
  const BotDetailPage({super.key, @PathParam('id') required this.botId});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BotDetailPageState();
}

class _BotDetailPageState extends ConsumerState<BotDetailPage> {
  @override
  Widget build(BuildContext context) {
    BotEntity? bot;
    List<BotUsersEntity> botUsers = [];
    final botDetailsState = ref.watch(botDetailsProvider(botId: widget.botId));
    final botDetailEditState = ref.watch(botDetailsEditProvider);
    if (botDetailEditState is BotDeleteStateSuccess) {
      ref.invalidate(botProviderProvider);
      AutoRouter.of(context).replaceAll([const AuthUserNavigationRoute()]);
    }
    if (botDetailsState is BotDetailsStateSuccess) {
      bot = botDetailsState.botDetails.bot;
      botUsers = botDetailsState.botDetails.users;
    }
    final botEditState = ref.watch(botEditProvider);
    final botDatasourceChangeState = ref.watch(botChangeDatasourceProvider);
    final botAddUserState = ref.watch(botAddUserEditModeProvider);
    final botLlmChangeEditModeState = ref.watch(botLlmChangeEditModeProvider);
    return Scaffold(
      appBar: appBar(
        title: botDetailsState is BotDetailsStateSuccess && bot != null
            ? '${bot.botName} details'
            : 'Loading...',
        context: context,
        backButton: true,
        showLogoutAction: false,
      ),
      body: botDetailsState is BotDetailsStateSuccess && bot != null
          ? SingleChildScrollView(
              child: Column(
                children: [
                  if (botEditState == false)
                    Card(
                      color: Theme.of(context).colorScheme.onSecondary,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            'AI Bot',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          ListTile(
                            leading: const Icon(Icons.smart_toy_outlined),
                            title: Text(
                              bot.botName,
                            ),
                            subtitle: bot.botDescription != null
                                ? Text('Description: ${bot.botDescription}')
                                : null,
                          ),
                          if (bot.isOwner == true)
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                TextButton(
                                  child: const Text('EDIT'),
                                  onPressed: () {
                                    setState(() {
                                      ref
                                          .read(botEditProvider.notifier)
                                          .setBotEditMode(true);
                                    });
                                  },
                                ),
                                const SizedBox(width: 8),
                                TextButton(
                                  child: Text(
                                    'DELETE',
                                    style: TextStyle(color: Colors.red[400]),
                                  ),
                                  onPressed: () {
                                    ref
                                        .read(botDetailsEditProvider.notifier)
                                        .deleteBot(botId: bot!.botId!);
                                  },
                                ),
                                const SizedBox(width: 8),
                              ],
                            ),
                          if (botDetailEditState is BotDeleteStateFailure)
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.error,
                                ),
                                botDetailEditState.error.error,
                                textAlign: TextAlign.center,
                              ),
                            ),
                        ],
                      ),
                    ),
                  if (botEditState == true) BotEditWidget(bot: bot),
                  if (botDatasourceChangeState == false && bot.canSeeDatasource)
                    Card(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Datasource',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          bot.datasourceName != null
                              ? ListTile(
                                  leading:
                                      const Icon(Icons.dataset_linked_outlined),
                                  title: Text(
                                    bot.datasourceName!,
                                  ),
                                  subtitle: bot.datasourceDesc != null
                                      ? Text(
                                          'Description: ${bot.datasourceDesc}')
                                      : null,
                                )
                              : const Text('No linked datasource'),
                          if (bot.canChangeDatasource)
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                TextButton(
                                  child: bot.datasourceName != null
                                      ? const Text('CHANGE')
                                      : const Text('ADD'),
                                  onPressed: () {
                                    ref
                                        .read(botChangeDatasourceProvider
                                            .notifier)
                                        .setDatasourceEditMode(true);
                                  },
                                ),
                                const SizedBox(width: 8),
                                if (bot.datasourceName != null)
                                  TextButton(
                                    child: Text(
                                      'REMOVE',
                                      style: TextStyle(color: Colors.red[400]),
                                    ),
                                    onPressed: () {
                                      ref
                                          .read(botDetailsEditProvider.notifier)
                                          .botRemoveDatasource(
                                              botId: bot!.botId!);
                                    },
                                  ),
                                const SizedBox(width: 8),
                              ],
                            ),
                          if (botDetailEditState
                              is BotRemoveDatasourceStateFailure)
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.error,
                                ),
                                botDetailEditState.error.error,
                                textAlign: TextAlign.center,
                              ),
                            ),
                        ],
                      ),
                    ),
                  if (botDatasourceChangeState == true)
                    BotDatasourceChangeWidget(bot: bot),
                  if (bot.canSeeLlm && botLlmChangeEditModeState == false)
                    Card(
                      color: Theme.of(context).colorScheme.onSecondary,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            'AI Model',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          ListTile(
                            leading: const Icon(Icons.language),
                            title: Text(
                              '${bot.llmTypeName!}-${bot.llmName!}',
                            ),
                            subtitle: bot.userLlmDescription != null
                                ? Text('Description: ${bot.userLlmDescription}')
                                : null,
                          ),
                          if (bot.canChangeLlm)
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                TextButton(
                                  child: const Text('CHANGE'),
                                  onPressed: () {
                                    ref
                                        .read(botLlmChangeEditModeProvider
                                            .notifier)
                                        .setBotLLmChangeEditMode(true);
                                  },
                                ),
                              ],
                            ),
                        ],
                      ),
                    ),
                  if (botLlmChangeEditModeState == true)
                    BotLlmChangeWidget(bot: bot),
                  Card(
                    child: Column(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.group, size: 20),
                          title: Text(
                            'Users',
                            style: Theme.of(context).textTheme.labelSmall,
                          ),
                          trailing: bot.canAddUsers
                              ? IconButton(
                                  onPressed: () {
                                    ref
                                        .read(
                                            botAddUserEditModeProvider.notifier)
                                        .setAddUserEditMode(true);
                                  },
                                  icon: const Icon(
                                    Icons.group_add,
                                    size: 25,
                                  ),
                                  tooltip: 'Add user',
                                )
                              : null,
                        ),
                        if (botAddUserState == true)
                          BotUserAddWidget(botId: bot.botId!),
                        if (botAddUserState == false)
                          ListView.builder(
                            shrinkWrap: true,
                            itemCount: botUsers.length,
                            itemBuilder: (context, index) {
                              final user = botUsers[index];
                              return ListTile(
                                leading: const Icon(Icons.person),
                                title: Text(user.fullName),
                                trailing: bot!.isOwner == true
                                    ? TextButton(
                                        child: Text(
                                          'REMOVE',
                                          style:
                                              TextStyle(color: Colors.red[400]),
                                        ),
                                        onPressed: () async {
                                          await ref
                                              .read(botDetailsEditProvider
                                                  .notifier)
                                              .botRemoveUser(
                                                  botId: bot!.botId!,
                                                  removeUserId: user.userId);
                                          final userRemoveState =
                                              ref.read(botDetailsEditProvider);
                                          if (userRemoveState
                                              is BotRemoveUserStateFailure) {
                                            if (context.mounted) {
                                              showDialog<String>(
                                                context: context,
                                                builder:
                                                    (BuildContext context) =>
                                                        AlertDialog(
                                                  content: Text(
                                                    userRemoveState.error.error,
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .error,
                                                    ),
                                                  ),
                                                  actions: <Widget>[
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              context, 'OK'),
                                                      child: const Text('OK'),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            }
                                          }
                                        },
                                      )
                                    : null,
                              );
                            },
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          : botDetailsState is BotDetailsStateFailure
              ? Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.error,
                      ),
                      botDetailsState.error.error,
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              : const CircularProgressIndicator(),
    );
  }
}
