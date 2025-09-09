import 'package:fpdart/fpdart.dart';
import 'package:kernvind/core/error/freezed_classes/failure_error.dart';
import 'package:kernvind/features/authenticated_user/shared/user_llm/domain/entities/user_llm_entity.dart';

abstract interface class UserLlmSharedRepo {
  Future<Either<FailureError, List<UserLlmEntity>>> listLlms();
}
