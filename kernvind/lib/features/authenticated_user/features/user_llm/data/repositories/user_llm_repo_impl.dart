import 'package:fpdart/fpdart.dart';
import 'package:kernvind/core/entities/success/success_msg.dart';
import 'package:kernvind/core/error/freezed_classes/failure_error.dart';
import 'package:kernvind/features/authenticated_user/features/user_llm/domain/entities/public_llm_list_entity.dart';
import 'package:kernvind/features/authenticated_user/features/user_llm/domain/entities/user_llm_details_entity.dart';
import 'package:kernvind/features/authenticated_user/features/user_llm/domain/entities/user_llm_update_entity.dart';
import 'package:kernvind/features/authenticated_user/features/user_llm/domain/repositories/user_llm_repo.dart';
import 'package:kernvind/features/authenticated_user/shared/user_llm/domain/entities/user_llm_entity.dart';

import '../datasource/user_llm_remote_datasource.dart';

class UserLlmRepoImpl implements UserLlmRepo {
  final UserLlmRemoteDatasourceImpl _userLlmRemoteDatasourceImpl;

  UserLlmRepoImpl(this._userLlmRemoteDatasourceImpl);

  @override
  Future<Either<FailureError, UserLlmEntity>> createUserLlm(
      {required UserLlmEntity userLlmEntity}) {
    return _userLlmRemoteDatasourceImpl.createUserLlm(
        userLlmEntity: userLlmEntity);
  }

  @override
  Future<Either<FailureError, List<PublicLlmListEntity>>> getAvailableLlms() {
    return _userLlmRemoteDatasourceImpl.getAvailableLlms();
  }

  @override
  Future<Either<FailureError, UserLlmDetailsEntity>> getUserLlmDetails(
      {required int userLlmId}) {
    return _userLlmRemoteDatasourceImpl.getUserLlmDetails(userLlmId: userLlmId);
  }

  @override
  Future<Either<FailureError, UserLlmDetailsEntity>> updateUserLlm(
      {required UserLlmUpdateEntity userLlm}) {
    return _userLlmRemoteDatasourceImpl.updateUserLlm(userLlm: userLlm);
  }

  @override
  Future<Either<FailureError, SuccessMsg>> deleteUserLlm(
      {required int userLlmId}) {
    return _userLlmRemoteDatasourceImpl.deleteUserLlm(userLlmId: userLlmId);
  }
}
