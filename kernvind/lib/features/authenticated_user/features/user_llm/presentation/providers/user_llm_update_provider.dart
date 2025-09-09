import 'package:kernvind/features/authenticated_user/features/user_llm/domain/entities/user_llm_update_entity.dart';
import 'package:kernvind/features/authenticated_user/features/user_llm/presentation/providers/user_llm_details_provider.dart';
import 'package:kernvind/features/authenticated_user/features/user_llm/presentation/providers/user_llm_repo_provider.dart';
import 'package:kernvind/features/authenticated_user/features/user_llm/presentation/providers/user_llm_update_provider_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'user_llm_update_provider.g.dart';

@riverpod
class UserLlmUpdate extends _$UserLlmUpdate {
  @override
  UserLlmUpdateProviderState build() {
    return UserLlmUpdateProviderStateInitial();
  }

  Future<void> updateUserLlm({required UserLlmUpdateEntity userLlm}) async {
    state = UserLlmUpdateProviderStateLoading();
    final userRepoRepositoryImpl = ref.read(userLlmRepoProvider);
    final botDetailsOrFailure =
        await userRepoRepositoryImpl.updateUserLlm(userLlm: userLlm);
    botDetailsOrFailure
        .fold((error) => state = UserLlmUpdateProviderStateFailure(error),
            (userLlmDetails) {
      state = const UserLlmUpdateProviderStateSuccess();
      ref
          .read(userLlmDetailsProvider(
                  userLlmId: userLlmDetails.userLlm.userLlmId)
              .notifier)
          .setUserLlmDetailsState(userLlmDetails);
    });
  }

  Future<void> deleteUserLlm({required int userLlmId}) async {
    final userRepoRepositoryImpl = ref.read(userLlmRepoProvider);
    final userLlmDeleteOrFailure =
        await userRepoRepositoryImpl.deleteUserLlm(userLlmId: userLlmId);
    userLlmDeleteOrFailure.fold(
        (error) => state = UserLlmDeleteProviderStateFailure(error),
        (success) => state = const UserLlmDeleteProviderStateSuccess());
  }
}
