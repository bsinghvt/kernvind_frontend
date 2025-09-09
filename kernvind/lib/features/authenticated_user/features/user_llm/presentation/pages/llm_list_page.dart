import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:kernvind/core/widgets/app_bar.dart';
import 'package:kernvind/core/widgets/floating_button.dart';
import 'package:kernvind/features/authenticated_user/shared/user_llm/domain/entities/user_llm_entity.dart';
import 'package:kernvind/features/authenticated_user/shared/user_llm/presentation/providers/user_llm_list_provider.dart';
import 'package:kernvind/features/authenticated_user/shared/user_llm/presentation/providers/user_llm_list_provider_state.dart';
import 'package:kernvind/routes/auto_route_router.gr.dart';

@RoutePage()
class LlmListPage extends ConsumerStatefulWidget {
  const LlmListPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LlmListState();
}

class _LlmListState extends ConsumerState<LlmListPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<UserLlmEntity> userLLMs = [];
    final userLlmListState = ref.watch(userLlmListProvider);

    if (userLlmListState is UserLlmListProviderStateSuccess) {
      userLLMs = userLlmListState.userLlms;
    }
    return Scaffold(
      floatingActionButton: AppFloatingButton(
        toolTip: 'Create AI model',
        onPressed: () {
          AutoRouter.of(context).push(const UserLlmCreateRoute());
        },
      ),
      appBar: appBar(title: 'AI models', context: context, ref: ref),
      body: userLlmListState is UserLlmListProviderStateSuccess &&
              userLLMs.isEmpty
          ? const Center(
              child: Text(
                  'No AI models. Click the create button to create a new AI models.'),
            )
          : userLlmListState is UserLlmListProviderStateSuccess
              ? ListView.builder(
                  itemCount: userLLMs.length,
                  itemBuilder: (context, index) {
                    final userLlm = userLLMs[index];
                    return Column(mainAxisSize: MainAxisSize.min, children: [
                      ListTile(
                        trailing: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const Icon(
                              Icons.language_outlined,
                              size: 16,
                            ),
                            Text("${userLlm.llmType}-${userLlm.llmId}")
                          ],
                        ),
                        onTap: () {
                          AutoRouter.of(context).push(UserLlmDetailsRoute(
                              userLlmId: userLlm.userLlmId!));
                        },
                        titleAlignment: ListTileTitleAlignment.top,
                        leading: CircleAvatar(
                          backgroundColor:
                              Theme.of(context).colorScheme.onSecondary,
                          child: const Icon(Icons.language_rounded),
                        ),
                        title: Text(
                          userLlm.userLlmName,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        isThreeLine: false,
                      ),
                    ]);
                  })
              : userLlmListState is UserLlmListProviderStateFailure
                  ? Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.error,
                          ),
                          userLlmListState.error.error,
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
