import 'package:kernvind/features/authenticated_user/features/user_llm/domain/entities/user_llm_details_entity.dart';
import 'package:kernvind/features/authenticated_user/features/user_llm/presentation/providers/user_llm_details_state.dart';
import 'package:kernvind/features/authenticated_user/features/user_llm/presentation/providers/user_llm_repo_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'user_llm_details_provider.g.dart';

@riverpod
class UserLlmDetails extends _$UserLlmDetails {
  @override
  UserLlmDetailsProviderState build({required int userLlmId}) {
    state = UserLlmDetailsProviderStateInitial();
    getUserLlmDetails(userLlmId: userLlmId);
    return state;
  }

  Future<void> getUserLlmDetails({required int userLlmId}) async {
    final userLlmRepoImpl = ref.read(userLlmRepoProvider);
    state = UserLlmDetailsProviderStateLoading();
    final llmDetailsOrFailure =
        await userLlmRepoImpl.getUserLlmDetails(userLlmId: userLlmId);
    llmDetailsOrFailure.fold(
        (error) => state = UserLlmDetailsProviderStateFailure(error),
        (llmDetails) => state = UserLlmDetailsProviderStateSuccess(llmDetails));
  }

  void setUserLlmDetailsState(UserLlmDetailsEntity llmDetails) {
    state = UserLlmDetailsProviderStateSuccess(llmDetails);
  }
}
