import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:icon_craft/icon_craft.dart';
import 'package:kernvind/core/widgets/app_bar.dart';
import 'package:kernvind/features/authenticated_user/features/user_llm/domain/entities/user_llm_bot_entity.dart';
import 'package:kernvind/features/authenticated_user/features/user_llm/domain/entities/user_llm_in_entity.dart';
import 'package:kernvind/features/authenticated_user/features/user_llm/presentation/providers/user_llm_details_provider.dart';
import 'package:kernvind/features/authenticated_user/features/user_llm/presentation/providers/user_llm_details_state.dart';
import 'package:kernvind/features/authenticated_user/features/user_llm/presentation/providers/user_llm_edit_mode_provider.dart';
import 'package:kernvind/features/authenticated_user/features/user_llm/presentation/providers/user_llm_update_provider.dart';
import 'package:kernvind/features/authenticated_user/features/user_llm/presentation/providers/user_llm_update_provider_state.dart';
import 'package:kernvind/features/authenticated_user/features/user_llm/presentation/widgets/user_llm_edit_widget.dart';
import 'package:kernvind/features/authenticated_user/shared/user_llm/presentation/providers/user_llm_list_provider.dart';
import 'package:kernvind/routes/auto_route_router.gr.dart';

@RoutePage()
class UserLlmDetailsPage extends ConsumerStatefulWidget {
  final int userLlmId;
  const UserLlmDetailsPage(
      {super.key, @PathParam('id') required this.userLlmId});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _UserLlmDetailsPageState();
}

class _UserLlmDetailsPageState extends ConsumerState<UserLlmDetailsPage> {
  @override
  Widget build(BuildContext context) {
    UserLlmInEntity? llm;
    List<UserLlmBotEntity> userLlmBots = [];
    final userLlmDetailsState =
        ref.watch(userLlmDetailsProvider(userLlmId: widget.userLlmId));
    if (userLlmDetailsState is UserLlmDetailsProviderStateSuccess) {
      llm = userLlmDetailsState.userLlmDetails.userLlm;
      userLlmBots = userLlmDetailsState.userLlmDetails.userLlmBots;
    }
    final userLlmUpdateState = ref.watch(userLlmUpdateProvider);
    if (userLlmUpdateState is UserLlmDeleteProviderStateSuccess) {
      ref.invalidate(userLlmListProvider);
      AutoRouter.of(context).replaceAll([const LlmListRoute()]);
    }
    final userLlmEditMode = ref.watch(userLlmEditModeProviderProvider);
    return Scaffold(
      appBar: appBar(
        title: userLlmDetailsState is UserLlmDetailsProviderStateSuccess
            ? '${userLlmDetailsState.userLlmDetails.userLlm.userLlmName} details'
            : 'Loading...',
        context: context,
        backButton: true,
        showLogoutAction: false,
      ),
      body: userLlmDetailsState is UserLlmDetailsProviderStateSuccess &&
              llm != null
          ? SingleChildScrollView(
              child: Column(
                children: [
                  if (userLlmEditMode == false)
                    Card(
                      color: Theme.of(context).colorScheme.onSecondary,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            'AI model',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          ListTile(
                              leading: const Icon(Icons.language),
                              title: Text(
                                llm.userLlmName,
                              ),
                              subtitle: llm.userLlmDescription != null
                                  ? Text(
                                      'Description: ${llm.userLlmDescription}')
                                  : null,
                              trailing: Text("${llm.llmType}-${llm.llmId}")),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              TextButton(
                                child: const Text('EDIT'),
                                onPressed: () {
                                  ref
                                      .read(userLlmEditModeProviderProvider
                                          .notifier)
                                      .setUserLlmEditMode(true);
                                },
                              ),
                              const SizedBox(width: 8),
                              if (userLlmBots.isEmpty)
                                TextButton(
                                  child: Text(
                                    'DELETE',
                                    style: TextStyle(color: Colors.red[400]),
                                  ),
                                  onPressed: () {
                                    ref
                                        .read(userLlmUpdateProvider.notifier)
                                        .deleteUserLlm(
                                            userLlmId: widget.userLlmId);
                                  },
                                ),
                              const SizedBox(width: 8),
                            ],
                          ),
                          if (userLlmUpdateState
                              is UserLlmDeleteProviderStateFailure)
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.error,
                                ),
                                userLlmUpdateState.error.error,
                                textAlign: TextAlign.center,
                              ),
                            ),
                        ],
                      ),
                    ),
                  if (userLlmEditMode == true) UserLlmEditWidget(userLlm: llm),
                  Card(
                    child: Column(
                      children: [
                        ListTile(
                          leading: IconCraft(
                            Icon(
                              Icons.language,
                              size: 25,
                              color:
                                  Theme.of(context).colorScheme.inversePrimary,
                            ),
                            Icon(
                              Icons.smart_toy_sharp,
                              color:
                                  Theme.of(context).colorScheme.onPrimaryFixed,
                            ),
                            decoration: const IconDecoration(
                              border: IconBorder(),
                            ),
                            alignment: Alignment.centerRight,
                          ),
                          title: Text(
                            'Linked Bots',
                            style: Theme.of(context).textTheme.labelSmall,
                          ),
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: userLlmBots.length,
                          itemBuilder: (context, index) {
                            final llmBot = userLlmBots[index];
                            return ListTile(
                              leading: const Icon(Icons.smart_toy_rounded),
                              title: Text(llmBot.botName),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          : userLlmDetailsState is UserLlmDetailsProviderStateFailure
              ? Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.error,
                      ),
                      userLlmDetailsState.error.error,
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              : const CircularProgressIndicator(),
    );
  }
}
