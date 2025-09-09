import 'package:kernvind/core/error/freezed_classes/failure_error.dart';

sealed class DatasourceEditState {
  const DatasourceEditState();
}

final class DatasourceEditStateInitial extends DatasourceEditState {
  const DatasourceEditStateInitial();
}

final class DatasourceEditStateLoading extends DatasourceEditState {
  const DatasourceEditStateLoading();
}

final class DatasourceEditStateSuccess extends DatasourceEditState {
  const DatasourceEditStateSuccess();
}

final class DatasourceDeleteStateSuccess extends DatasourceEditState {
  const DatasourceDeleteStateSuccess();
}

final class DatasourceFeedDeleteStateSuccess extends DatasourceEditState {
  const DatasourceFeedDeleteStateSuccess();
}

final class DatasourceNameAndDescEditStateFailure extends DatasourceEditState {
  final FailureError error;
  const DatasourceNameAndDescEditStateFailure(this.error);
}

final class DatasourceDeleteStateFailure extends DatasourceEditState {
  final FailureError error;
  const DatasourceDeleteStateFailure(this.error);
}

final class DatafeedDeleteStateFailure extends DatasourceEditState {
  final FailureError error;
  const DatafeedDeleteStateFailure(this.error);
}

final class DatafeedAddtateFailure extends DatasourceEditState {
  final FailureError error;
  const DatafeedAddtateFailure(this.error);
}

final class DatasourceEditStateYoutubeValidationSuccess
    extends DatasourceEditState {
  final String videoId;
  final String videoTitle;
  const DatasourceEditStateYoutubeValidationSuccess(
      {required this.videoId, required this.videoTitle});
}
