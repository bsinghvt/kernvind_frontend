import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:icon_craft/icon_craft.dart';
import 'package:kernvind/core/widgets/app_bar.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/domain/entities/datasource_entity.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/domain/entities/datasource_feed_entity.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/presentation/providers/datasource_details_provider/datasource_details_provider.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/presentation/providers/datasource_details_provider/datasource_details_provider_state.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/presentation/providers/datasource_edit_provider/datasource_edit_mode_provider.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/presentation/providers/datasource_edit_provider/datasource_edit_provider.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/presentation/providers/datasource_edit_provider/datasource_edit_state.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/presentation/providers/datasource_list_provider/datasource_list.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/presentation/widgets/datasource_add_datafeed_widget.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/presentation/widgets/datasource_edit_widegt.dart';

@RoutePage()
class DatasourceDetailsPage extends ConsumerStatefulWidget {
  final int datasourceId;
  const DatasourceDetailsPage(
      {super.key, @PathParam('id') required this.datasourceId});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DatasourceDetailsPageState();
}

class _DatasourceDetailsPageState extends ConsumerState<DatasourceDetailsPage> {
  @override
  Widget build(BuildContext context) {
    DatasourceListEntity? datasourceResp;
    List<DatasourceFeedEntity> datasourceFeeds = [];
    final datasourceNameAndDescEdit = ref.watch(datasourceEditModeProvider);
    final datafeedAddEditMode = ref.watch(datafeedAddEditModeProvider);
    final datasourceEditSate = ref.watch(datasourceEditProvider);

    if (datasourceEditSate is DatasourceDeleteStateSuccess) {
      ref.invalidate(datasourceListProvider);
      AutoRouter.of(context).maybePop();
    }
    final datasourceDetailsState =
        ref.watch(datasourceDetailsProvider(datasourceId: widget.datasourceId));
    if (datasourceDetailsState is DatasourceDetailsProviderStateSuccess) {
      datasourceResp = datasourceDetailsState.datasourceDetails.datasource;
      datasourceFeeds = datasourceDetailsState.datasourceDetails.datafeeds;
    }

    return Scaffold(
      appBar: appBar(
        title:
            datasourceDetailsState is DatasourceDetailsProviderStateSuccess &&
                    datasourceResp != null
                ? '${datasourceResp.datasourceName} details'
                : 'Loading...',
        context: context,
        backButton: true,
        showLogoutAction: false,
      ),
      body: datasourceDetailsState is DatasourceDetailsProviderStateSuccess &&
              datasourceResp != null
          ? SingleChildScrollView(
              child: Column(
                children: [
                  if (datasourceNameAndDescEdit == false)
                    Card(
                      color: const Color.fromARGB(31, 220, 154, 154),
                      child: Column(
                        children: [
                          ListTile(
                            leading: const Icon(Icons.dataset_linked_outlined),
                            title: Text(
                              datasourceResp.datasourceName,
                            ),
                            subtitle: datasourceResp.datasourceDescription !=
                                    null
                                ? Text(
                                    'Description: ${datasourceResp.datasourceDescription}')
                                : null,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              TextButton(
                                child: const Text('EDIT'),
                                onPressed: () {
                                  ref
                                      .read(datasourceEditModeProvider.notifier)
                                      .setDatasourceEditMode(true);
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
                                      .read(datasourceEditProvider.notifier)
                                      .deleteDatasource(
                                          datasourceId:
                                              datasourceResp!.datasourceId);
                                },
                              ),
                              const SizedBox(width: 8),
                            ],
                          ),
                          if (datasourceEditSate
                              is DatasourceDeleteStateFailure)
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.error,
                                ),
                                datasourceEditSate.error.error,
                                textAlign: TextAlign.center,
                              ),
                            ),
                        ],
                      ),
                    ),
                  if (datasourceNameAndDescEdit == true)
                    DatasourceEditWidegt(datasource: datasourceResp),
                  Card(
                    child: Column(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.dynamic_feed, size: 20),
                          title: Text(
                            'Datafeeds',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          trailing: IconButton(
                            tooltip: 'Add datafeed',
                            onPressed: () {
                              ref
                                  .read(datafeedAddEditModeProvider.notifier)
                                  .setDatafeedAddEditMode(true);
                            },
                            icon: IconCraft(
                              Icon(
                                Icons.dynamic_feed,
                                size: 25,
                                color: Theme.of(context)
                                    .colorScheme
                                    .inversePrimary,
                              ),
                              Icon(
                                Icons.add,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimaryFixed,
                              ),
                              decoration: const IconDecoration(
                                border: IconBorder(),
                              ),
                              alignment: Alignment.bottomRight,
                            ),
                          ),
                        ),
                        const Divider(
                          thickness: 3,
                        ),
                        if (datafeedAddEditMode == false)
                          ListView.builder(
                            shrinkWrap: true,
                            itemCount: datasourceFeeds.length,
                            itemBuilder: (context, index) {
                              final datafeed = datasourceFeeds[index];
                              return Column(
                                children: [
                                  ListTile(
                                    leading: const Icon(Icons.dynamic_feed),
                                    title: Text(datafeed.datafeedName),
                                    subtitle: Text(datafeed.datafeedsourceId),
                                    trailing: datasourceFeeds.length > 1
                                        ? TextButton(
                                            child: Text(
                                              'DELETE',
                                              style: TextStyle(
                                                  color: Colors.red[400]),
                                            ),
                                            onPressed: () async {
                                              await ref
                                                  .read(datasourceEditProvider
                                                      .notifier)
                                                  .deleteDatasourceFeed(
                                                      datafeedId:
                                                          datafeed.datafeedId!);
                                              final datafeedDeleteState = ref
                                                  .read(datasourceEditProvider);
                                              if (datafeedDeleteState
                                                  is DatafeedDeleteStateFailure) {
                                                if (context.mounted) {
                                                  showDialog<String>(
                                                    context: context,
                                                    builder: (BuildContext
                                                            context) =>
                                                        AlertDialog(
                                                      content: Text(
                                                        datafeedDeleteState
                                                            .error.error,
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color:
                                                              Theme.of(context)
                                                                  .colorScheme
                                                                  .error,
                                                        ),
                                                      ),
                                                      actions: <Widget>[
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  context,
                                                                  'OK'),
                                                          child:
                                                              const Text('OK'),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                }
                                              }
                                            })
                                        : null,
                                  ),
                                  ListTile(
                                    leading: const Icon(Icons.details_outlined),
                                    title: Text(datafeed.datafeedSourceTitle),
                                    subtitle: datafeed.datafeedDescription !=
                                            null
                                        ? Text(datafeed.datafeedDescription!)
                                        : null,
                                    trailing:
                                        Text(datafeed.datafeedLoadStatus!),
                                  ),
                                  const Divider(
                                    thickness: 2,
                                  )
                                ],
                              );
                            },
                          ),
                        if (datafeedAddEditMode == true)
                          DatasourceAddDatafeedWidget(
                              datasource: datasourceResp),
                      ],
                    ),
                  ),
                ],
              ),
            )
          : datasourceDetailsState is DatasourceDetailsProviderStateFailure
              ? Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.error,
                      ),
                      datasourceDetailsState.error.error,
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              : const CircularProgressIndicator(),
    );
  }
}
