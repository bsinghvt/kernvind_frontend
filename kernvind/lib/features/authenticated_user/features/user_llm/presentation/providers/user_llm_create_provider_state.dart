import 'package:kernvind/core/error/freezed_classes/failure_error.dart';
import 'package:kernvind/features/authenticated_user/shared/user_llm/domain/entities/user_llm_entity.dart';

sealed class UserLlmCreateProviderState {
  const UserLlmCreateProviderState();
}

final class LlmCreateStateInitial extends UserLlmCreateProviderState {}

final class LlmCreateStateLoading extends UserLlmCreateProviderState {}

final class LlmCreateStateSuccess extends UserLlmCreateProviderState {
  final UserLlmEntity userLlm;
  const LlmCreateStateSuccess(this.userLlm);
}

final class LlmCreateStateFailure extends UserLlmCreateProviderState {
  final FailureError error;
  const LlmCreateStateFailure(this.error);
}
