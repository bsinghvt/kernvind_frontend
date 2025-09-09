import 'package:file_picker/file_picker.dart';
import 'package:kernvind/features/playground/domain/entities/playground_llm_config_entity.dart';
import 'package:kernvind/features/playground/presentation/providers/playground_create_provider_state.dart';
import 'package:kernvind/features/playground/presentation/providers/playground_setup_repo_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'playground_create_provider.g.dart';

@riverpod
class PlaygroundCreate extends _$PlaygroundCreate {
  @override
  PlaygroundCreateProviderState build() {
    state = const PlaygroundCreateProviderStateInitial();
    return state;
  }

  Future<void> uploadPlaygroundFile(
      {required PlatformFile file,
      PlaygroundLlmConfigEntity? llmConfig}) async {
    state = const PlaygroundCreateProviderStateLoading();
    final playgroundRepo = ref.read(playgroundSetupRepoImplProvider);
    final res = await playgroundRepo.playgroundDataUpload(file: file);
    res.fold(
        (error) => state = PlaygroundCreateProviderStateError(error: error),
        (token) {
      state = PlaygroundCreateProviderStateSuccess(
          tokenEntity: token, llmConfig: llmConfig);
    });
  }

  void setStateInitial() {
    state = const PlaygroundCreateProviderStateInitial();
  }
}
