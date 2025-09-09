import 'package:kernvind/features/authenticated_user/features/user_llm/presentation/providers/public_llm_list_provider_state.dart';
import 'package:kernvind/features/authenticated_user/features/user_llm/presentation/providers/user_llm_repo_provider.dart';
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
    final userLlmRepoImpl = ref.read(userLlmRepoProvider);
    state = LlmListProviderStateLoading();
    final llmListOrFailure = await userLlmRepoImpl.getAvailableLlms();
    llmListOrFailure.fold((error) => state = LlmListProviderStateFailure(error),
        (llmList) => state = LlmListProviderStateSuccess(llmList));
  }
}
