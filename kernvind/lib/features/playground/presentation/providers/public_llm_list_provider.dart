import 'package:kernvind/features/playground/presentation/providers/playground_setup_repo_provider.dart';
import 'package:kernvind/features/playground/presentation/providers/public_llm_list_provider_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'public_llm_list_provider.g.dart';

@riverpod
class PublicLlmList extends _$PublicLlmList {
  @override
  LlmListProviderState build() {
    getLlmList();
    return LlmListProviderStateInitial();
  }

  Future<void> getLlmList() async {
    final playgroundSetupRepoImpl = ref.read(playgroundSetupRepoImplProvider);
    state = LlmListProviderStateLoading();
    final llmListOrFailure = await playgroundSetupRepoImpl.getAvailableLlms();
    llmListOrFailure.fold((error) => state = LlmListProviderStateFailure(error),
        (llmList) => state = LlmListProviderStateSuccess(llmList));
  }
}
