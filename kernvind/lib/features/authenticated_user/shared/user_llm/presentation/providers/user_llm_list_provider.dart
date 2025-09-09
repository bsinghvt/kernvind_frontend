import 'package:kernvind/features/authenticated_user/shared/user_llm/presentation/providers/user_llm_list_provider_state.dart';
import 'package:kernvind/features/authenticated_user/shared/user_llm/presentation/providers/user_llm_shared_repo_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'user_llm_list_provider.g.dart';

@riverpod
class UserLlmList extends _$UserLlmList {
  @override
  UserLlmListProviderState build() {
    getLlmList();
    return UserLlmListProviderStateInitial();
  }

  Future<void> getLlmList() async {
    final userLlmSharedRepoImpl = ref.read(userLlmSharedRepoProvider);
    state = UserLlmListProviderStateLoading();
    final userListOrFailure = await userLlmSharedRepoImpl.listLlms();
    userListOrFailure.fold(
        (error) => state = UserLlmListProviderStateFailure(error),
        (userLlmList) => state = UserLlmListProviderStateSuccess(userLlmList));
  }
}
