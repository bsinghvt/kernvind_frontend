import 'package:kernvind/core/error/freezed_classes/failure_error.dart';
import 'package:kernvind/features/playground/domain/entities/playground_llm_config_entity.dart';
import 'package:kernvind/features/playground/domain/entities/playground_token_entity.dart';

sealed class PlaygroundCreateProviderState {
  const PlaygroundCreateProviderState();
}

final class PlaygroundCreateProviderStateLoading
    extends PlaygroundCreateProviderState {
  const PlaygroundCreateProviderStateLoading();
}

final class PlaygroundCreateProviderStateError
    extends PlaygroundCreateProviderState {
  final FailureError error;
  const PlaygroundCreateProviderStateError({required this.error});
}

final class PlaygroundCreateProviderStateInitial
    extends PlaygroundCreateProviderState {
  const PlaygroundCreateProviderStateInitial();
}

final class PlaygroundCreateProviderStateSuccess
    extends PlaygroundCreateProviderState {
  final PlaygroundTokenEntity tokenEntity;
  PlaygroundLlmConfigEntity? llmConfig;
  PlaygroundCreateProviderStateSuccess(
      {required this.tokenEntity, this.llmConfig});
}
