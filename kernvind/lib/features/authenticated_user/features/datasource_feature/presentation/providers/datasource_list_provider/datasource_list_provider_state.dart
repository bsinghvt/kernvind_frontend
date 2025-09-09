import 'package:kernvind/core/error/freezed_classes/failure_error.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/domain/entities/datasource_entity.dart';

sealed class DatasourceListProviderState {
  const DatasourceListProviderState();
}

final class DatasourceListProviderStateInitial
    extends DatasourceListProviderState {}

final class DatasourceListProviderStateLoading
    extends DatasourceListProviderState {}

final class DatasourceListProviderStateSuccess
    extends DatasourceListProviderState {
  final List<DatasourceListEntity> datasources;
  const DatasourceListProviderStateSuccess(this.datasources);
}

final class DatasourceListProviderStateFailure
    extends DatasourceListProviderState {
  final FailureError error;
  const DatasourceListProviderStateFailure(this.error);
}
