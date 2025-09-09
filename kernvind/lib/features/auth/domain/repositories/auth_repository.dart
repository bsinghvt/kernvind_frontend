import 'package:kernvind/core/entities/JWT/token_response_entity.dart';
import 'package:kernvind/core/error/freezed_classes/failure_error.dart';
import 'package:kernvind/features/auth/domain/entities/signup_entity.dart';
import 'package:kernvind/features/auth/domain/entities/login_entity.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class AuthRepositoryUseCase {
  Future<Either<FailureError, TokenResponseEntity>> signUpUser(
      {required SignupEntity signUpModel});
  Future<Either<FailureError, TokenResponseEntity>> loginUser(
      {required LoginEntity loginModel});
}
