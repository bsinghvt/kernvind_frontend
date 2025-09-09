import 'package:kernvind/core/error/freezed_classes/failure_error.dart';
import 'package:kernvind/features/authenticated_user/features/user_llm/domain/entities/public_llm_list_entity.dart';

sealed class LlmListProviderState {
  const LlmListProviderState();
}

final class LlmListProviderStateInitial extends LlmListProviderState {}

final class LlmListProviderStateLoading extends LlmListProviderState {}

final class LlmListProviderStateSuccess extends LlmListProviderState {
  final List<PublicLlmListEntity> llms;
  const LlmListProviderStateSuccess(this.llms);
}

final class LlmListProviderStateFailure extends LlmListProviderState {
  final FailureError error;
  const LlmListProviderStateFailure(this.error);
}
