import 'package:kernvind/features/authenticated_user/features/datasource_feature/domain/entities/datasource_details_entity.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/presentation/providers/datasource_details_provider/datasource_details_provider_state.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/presentation/providers/datasource_feature_datasource_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'datasource_details_provider.g.dart';

@riverpod
class DatasourceDetails extends _$DatasourceDetails {
  @override
  DatasourceDetailsProviderState build({required int datasourceId}) {
    state = DatasourceDetailsProviderStateInitial();
    getDatasourceDetails(datasourceId: datasourceId);
    return state;
  }

  Future<void> getDatasourceDetails({required int datasourceId}) async {
    state = DatasourceDetailsProviderStateLoading();
    final datasourceRepo = ref.read(dataSourceRepositoryImplProvider);
    final failureOrDetails =
        await datasourceRepo.getDatasourceDetails(datasourceId: datasourceId);
    failureOrDetails.fold(
        (error) => state = DatasourceDetailsProviderStateFailure(error),
        (datasourceDetails) =>
            state = DatasourceDetailsProviderStateSuccess(datasourceDetails));
  }

  void setDatasourceDetailsState(
      {required DatasourceDetailsEntity datasourceDetails}) {
    state = DatasourceDetailsProviderStateSuccess(datasourceDetails);
  }
}
