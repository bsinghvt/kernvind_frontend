import 'package:kernvind/core/error/freezed_classes/failure_error.dart';

sealed class UserLlmUpdateProviderState {
  const UserLlmUpdateProviderState();
}

final class UserLlmUpdateProviderStateInitial
    extends UserLlmUpdateProviderState {}

final class UserLlmUpdateProviderStateLoading
    extends UserLlmUpdateProviderState {}

final class UserLlmUpdateProviderStateSuccess
    extends UserLlmUpdateProviderState {
  const UserLlmUpdateProviderStateSuccess();
}

final class UserLlmUpdateProviderStateFailure
    extends UserLlmUpdateProviderState {
  final FailureError error;
  const UserLlmUpdateProviderStateFailure(this.error);
}

final class UserLlmDeleteProviderStateFailure
    extends UserLlmUpdateProviderState {
  final FailureError error;
  const UserLlmDeleteProviderStateFailure(this.error);
}

final class UserLlmDeleteProviderStateSuccess
    extends UserLlmUpdateProviderState {
  const UserLlmDeleteProviderStateSuccess();
}
