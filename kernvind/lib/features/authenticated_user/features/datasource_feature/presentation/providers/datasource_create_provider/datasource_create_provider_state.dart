import 'package:kernvind/core/error/freezed_classes/failure_error.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/domain/entities/datasource_create_entity.dart';

sealed class DatasourceCreateProviderState {
  const DatasourceCreateProviderState();
}

final class DatasourceCreateProviderStateInitial
    extends DatasourceCreateProviderState {}

final class DatasourceCreateProviderStateLoading
    extends DatasourceCreateProviderState {}

final class DatasourceCreateProviderStateSuccess
    extends DatasourceCreateProviderState {
  final DatasourceCreateEntity datasource;
  const DatasourceCreateProviderStateSuccess(this.datasource);
}

final class DatasourceCreateProviderStateFailure
    extends DatasourceCreateProviderState {
  final FailureError error;
  const DatasourceCreateProviderStateFailure(this.error);
}

final class DatasourceCreateProviderStateYoutubeValidationSuccess
    extends DatasourceCreateProviderState {
  final String videoId;
  final String videoTitle;
  const DatasourceCreateProviderStateYoutubeValidationSuccess(
      {required this.videoId, required this.videoTitle});
}
