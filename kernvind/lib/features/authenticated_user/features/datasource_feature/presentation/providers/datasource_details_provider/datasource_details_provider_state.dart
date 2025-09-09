import 'package:kernvind/core/error/freezed_classes/failure_error.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/domain/entities/datasource_details_entity.dart';

sealed class DatasourceDetailsProviderState {
  const DatasourceDetailsProviderState();
}

final class DatasourceDetailsProviderStateInitial
    extends DatasourceDetailsProviderState {}

final class DatasourceDetailsProviderStateLoading
    extends DatasourceDetailsProviderState {}

final class DatasourceDetailsProviderStateSuccess
    extends DatasourceDetailsProviderState {
  final DatasourceDetailsEntity datasourceDetails;
  const DatasourceDetailsProviderStateSuccess(this.datasourceDetails);
}

final class DatasourceDetailsProviderStateFailure
    extends DatasourceDetailsProviderState {
  final FailureError error;
  const DatasourceDetailsProviderStateFailure(this.error);
}
