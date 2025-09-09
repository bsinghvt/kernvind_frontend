import 'package:kernvind/core/error/freezed_classes/failure_error.dart';

sealed class BotDetailsEditState {
  const BotDetailsEditState();
}

final class BotDetailsEditStateInitial extends BotDetailsEditState {}

final class BotDetailsEditStateLoading extends BotDetailsEditState {}

final class BotDetailsEditStateSuccess extends BotDetailsEditState {
  const BotDetailsEditStateSuccess();
}

final class BotDetailsUserAddEditStateFailure extends BotDetailsEditState {
  final FailureError error;
  const BotDetailsUserAddEditStateFailure(this.error);
}

final class BotDetailsDatasourceAddEditStateFailure
    extends BotDetailsEditState {
  final FailureError error;
  const BotDetailsDatasourceAddEditStateFailure(this.error);
}

final class BotDetailsNameAndDescEditStateFailure extends BotDetailsEditState {
  final FailureError error;
  const BotDetailsNameAndDescEditStateFailure(this.error);
}

final class BotDeleteStateFailure extends BotDetailsEditState {
  final FailureError error;
  const BotDeleteStateFailure(this.error);
}

final class BotDeleteStateSuccess extends BotDetailsEditState {
  const BotDeleteStateSuccess();
}

final class BotRemoveDatasourceStateFailure extends BotDetailsEditState {
  final FailureError error;
  const BotRemoveDatasourceStateFailure(this.error);
}

final class BotRemoveDatasourceStateSuccess extends BotDetailsEditState {
  const BotRemoveDatasourceStateSuccess();
}

final class BotRemoveUserStateFailure extends BotDetailsEditState {
  final FailureError error;
  const BotRemoveUserStateFailure(this.error);
}

final class BotLlmChangeStateFailure extends BotDetailsEditState {
  final FailureError error;
  const BotLlmChangeStateFailure(this.error);
}

final class BotRemoveUserStateSuccess extends BotDetailsEditState {
  const BotRemoveUserStateSuccess();
}
