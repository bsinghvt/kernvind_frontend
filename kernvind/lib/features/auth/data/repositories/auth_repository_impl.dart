import 'package:kernvind/core/entities/JWT/token_response_entity.dart';
import 'package:kernvind/core/error/freezed_classes/failure_error.dart';
import 'package:kernvind/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:kernvind/features/auth/domain/entities/login_entity.dart';
import 'package:kernvind/features/auth/domain/entities/signup_entity.dart';
import 'package:kernvind/features/auth/domain/repositories/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class AuthRepositoryImpl implements AuthRepositoryUseCase {
  final AuthRemoteDatasourceImpl authRemoteDataSource;

  AuthRepositoryImpl({required this.authRemoteDataSource});
  @override
  Future<Either<FailureError, TokenResponseEntity>> loginUser(
      {required LoginEntity loginModel}) {
    return authRemoteDataSource.loginUser(loginModel: loginModel);
  }

  @override
  Future<Either<FailureError, TokenResponseEntity>> signUpUser(
      {required SignupEntity signUpModel}) {
    return authRemoteDataSource.signUpUser(signUpModel: signUpModel);
  }
}
