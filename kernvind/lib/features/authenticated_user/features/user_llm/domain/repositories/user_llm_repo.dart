import 'package:fpdart/fpdart.dart';
import 'package:kernvind/core/entities/success/success_msg.dart';
import 'package:kernvind/core/error/freezed_classes/failure_error.dart';
import 'package:kernvind/features/authenticated_user/features/user_llm/domain/entities/public_llm_list_entity.dart';
import 'package:kernvind/features/authenticated_user/features/user_llm/domain/entities/user_llm_details_entity.dart';
import 'package:kernvind/features/authenticated_user/features/user_llm/domain/entities/user_llm_update_entity.dart';
import 'package:kernvind/features/authenticated_user/shared/user_llm/domain/entities/user_llm_entity.dart';

abstract interface class UserLlmRepo {
  Future<Either<FailureError, UserLlmEntity>> createUserLlm(
      {required UserLlmEntity userLlmEntity});

  Future<Either<FailureError, List<PublicLlmListEntity>>> getAvailableLlms();
  Future<Either<FailureError, UserLlmDetailsEntity>> getUserLlmDetails(
      {required int userLlmId});
  Future<Either<FailureError, UserLlmDetailsEntity>> updateUserLlm(
      {required UserLlmUpdateEntity userLlm});
  Future<Either<FailureError, SuccessMsg>> deleteUserLlm(
      {required int userLlmId});
}
