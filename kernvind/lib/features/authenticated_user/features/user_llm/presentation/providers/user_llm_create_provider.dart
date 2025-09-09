import 'package:kernvind/features/authenticated_user/features/user_llm/presentation/providers/user_llm_create_provider_state.dart';
import 'package:kernvind/features/authenticated_user/features/user_llm/presentation/providers/user_llm_repo_provider.dart';
import 'package:kernvind/features/authenticated_user/shared/user_llm/domain/entities/user_llm_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'user_llm_create_provider.g.dart';

@riverpod
class UserLlmCreate extends _$UserLlmCreate {
  @override
  UserLlmCreateProviderState build() {
    return LlmCreateStateInitial();
  }

  Future<void> createUserLlm({required UserLlmEntity userLlmEntity}) async {
    final userLlmRepoImpl = ref.read(userLlmRepoProvider);
    state = LlmCreateStateLoading();
    final llmCreateOrFail =
        await userLlmRepoImpl.createUserLlm(userLlmEntity: userLlmEntity);
    llmCreateOrFail.fold((error) => state = LlmCreateStateFailure(error),
        (newUserLlm) => state = LlmCreateStateSuccess(newUserLlm));
  }
}
