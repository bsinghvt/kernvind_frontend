import 'package:kernvind/core/error/freezed_classes/failure_error.dart';
import 'package:kernvind/features/authenticated_user/features/user_llm/domain/entities/user_llm_details_entity.dart';

sealed class UserLlmDetailsProviderState {
  const UserLlmDetailsProviderState();
}

final class UserLlmDetailsProviderStateInitial
    extends UserLlmDetailsProviderState {}

final class UserLlmDetailsProviderStateLoading
    extends UserLlmDetailsProviderState {}

final class UserLlmDetailsProviderStateSuccess
    extends UserLlmDetailsProviderState {
  final UserLlmDetailsEntity userLlmDetails;
  const UserLlmDetailsProviderStateSuccess(this.userLlmDetails);
}

final class UserLlmDetailsProviderStateFailure
    extends UserLlmDetailsProviderState {
  final FailureError error;
  const UserLlmDetailsProviderStateFailure(this.error);
}
