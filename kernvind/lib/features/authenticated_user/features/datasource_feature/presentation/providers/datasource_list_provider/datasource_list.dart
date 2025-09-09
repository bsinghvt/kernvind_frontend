import 'package:kernvind/features/authenticated_user/features/datasource_feature/presentation/providers/datasource_feature_datasource_provider.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/presentation/providers/datasource_list_provider/datasource_list_provider_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'datasource_list.g.dart';

@riverpod
class DatasourceList extends _$DatasourceList {
  @override
  DatasourceListProviderState build() {
    state = DatasourceListProviderStateInitial();
    getDatasourceList();
    return state;
  }

  Future<void> getDatasourceList() async {
    state = DatasourceListProviderStateLoading();
    final datasourceRepo = ref.read(dataSourceRepositoryImplProvider);
    final failureOrList = await datasourceRepo.listDatasources();
    failureOrList.fold(
        (error) => state = DatasourceListProviderStateFailure(error),
        (datasources) =>
            state = DatasourceListProviderStateSuccess(datasources));
  }
}
