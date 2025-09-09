import 'package:fpdart/fpdart.dart';
import 'package:kernvind/core/error/freezed_classes/failure_error.dart';
import 'package:kernvind/features/authenticated_user/shared/user_llm/data/datasource/user_llm_remote_datasource.dart';
import 'package:kernvind/features/authenticated_user/shared/user_llm/domain/entities/user_llm_entity.dart';
import 'package:kernvind/features/authenticated_user/shared/user_llm/domain/repositories/user_llm_shared_repo.dart';

class UserLlmSharedRepoImpl implements UserLlmSharedRepo {
  final UserLlmRemoteDatasourceImpl _userLlmRemoteDatasourceImpl;

  UserLlmSharedRepoImpl(this._userLlmRemoteDatasourceImpl);
  @override
  Future<Either<FailureError, List<UserLlmEntity>>> listLlms() {
    return _userLlmRemoteDatasourceImpl.listLlms();
  }
}
