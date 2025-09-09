import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kernvind/core/widgets/app_bar.dart';
import 'package:kernvind/core/widgets/floating_button.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/domain/entities/datasource_entity.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/presentation/providers/datasource_list_provider/datasource_list.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/presentation/providers/datasource_list_provider/datasource_list_provider_state.dart';
import 'package:kernvind/routes/auto_route_router.gr.dart';

@RoutePage()
class DatasourceListPage extends ConsumerStatefulWidget {
  const DatasourceListPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DatasourceListState();
}

class _DatasourceListState extends ConsumerState<DatasourceListPage> {
  final floatingBtnTooltip = 'Create datasource';
  final pageTitle = 'Datasources';

  @override
  Widget build(BuildContext context) {
    floatingPressed() {
      AutoRouter.of(context).push(const DatasourceCreateRoute());
    }

    List<DatasourceListEntity> datasourceList = [];

    final datasourceListProviderState = ref.watch(datasourceListProvider);

    if (datasourceListProviderState is DatasourceListProviderStateSuccess) {
      datasourceList = datasourceListProviderState.datasources;
    }

    return Scaffold(
      floatingActionButton: AppFloatingButton(
          toolTip: floatingBtnTooltip, onPressed: floatingPressed),
      appBar: appBar(title: pageTitle, context: context, ref: ref),
      body: datasourceListProviderState is DatasourceListProviderStateSuccess &&
              datasourceList.isEmpty
          ? const Center(
              child: Text(
                  'No Datasource. Click the create button to create a new datasource.'))
          : datasourceListProviderState is DatasourceListProviderStateSuccess
              ? RefreshIndicator(
                  onRefresh: () async {
                    return ref
                        .read(datasourceListProvider.notifier)
                        .getDatasourceList();
                  },
                  child: ListView.builder(
                      itemCount: datasourceList.length,
                      itemBuilder: (context, index) {
                        final datasource = datasourceList[index];
                        return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ListTile(
                                onTap: () {
                                  AutoRouter.of(context).push(
                                      DatasourceDetailsRoute(
                                          datasourceId:
                                              datasource.datasourceId));
                                },
                                titleAlignment: ListTileTitleAlignment.top,
                                leading: CircleAvatar(
                                  backgroundColor:
                                      Theme.of(context).colorScheme.onSecondary,
                                  child:
                                      const Icon(Icons.dataset_linked_outlined),
                                ),
                                title: Text(
                                  datasource.datasourceName,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w200,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurface),
                                ),
                                isThreeLine: false,
                              ),
                            ]);
                      }),
                )
              : datasourceListProviderState
                      is DatasourceListProviderStateFailure
                  ? Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.error,
                          ),
                          datasourceListProviderState.error.error,
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
