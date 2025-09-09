import 'package:kernvind/core/error/freezed_classes/failure_error.dart';
import 'package:kernvind/features/authenticated_user/shared/user_llm/domain/entities/user_llm_entity.dart';

sealed class UserLlmListProviderState {
  const UserLlmListProviderState();
}

final class UserLlmListProviderStateInitial extends UserLlmListProviderState {}

final class UserLlmListProviderStateLoading extends UserLlmListProviderState {}

final class UserLlmListProviderStateSuccess extends UserLlmListProviderState {
  final List<UserLlmEntity> userLlms;
  const UserLlmListProviderStateSuccess(this.userLlms);
}

final class UserLlmListProviderStateFailure extends UserLlmListProviderState {
  final FailureError error;
  const UserLlmListProviderStateFailure(this.error);
}
