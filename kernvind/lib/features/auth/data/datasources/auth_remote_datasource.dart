import 'package:kernvind/core/configuration/config.dart';
import 'package:kernvind/core/entities/JWT/token_response_entity.dart';
import 'package:kernvind/core/error/freezed_classes/failure_error.dart';
import 'package:kernvind/features/auth/domain/entities/login_entity.dart';
import 'package:kernvind/features/auth/domain/entities/signup_entity.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class AuthRemoteDatasource {
  Future<Either<FailureError, TokenResponseEntity>> signUpUser(
      {required SignupEntity signUpModel});
  Future<Either<FailureError, TokenResponseEntity>> loginUser(
      {required LoginEntity loginModel});
}

class AuthRemoteDatasourceImpl implements AuthRemoteDatasource {
  final Dio dio;

  AuthRemoteDatasourceImpl(this.dio);

  @override
  Future<Either<FailureError, TokenResponseEntity>> signUpUser(
      {required SignupEntity signUpModel}) async {
    try {
      Response resp;
      resp = await dio.post(ConfigSingleton().signUpUrl,
          data: signUpModel.toJson());
      return right(TokenResponseEntity.fromJson(resp.data));
    } on DioException catch (e) {
      if (e.response != null) {
        return left(FailureError.fromJson(e.response!.data));
      }
      return left(FailureError());
    } catch (e) {
      return left(FailureError());
    }
  }

  @override
  Future<Either<FailureError, TokenResponseEntity>> loginUser(
      {required LoginEntity loginModel}) async {
    try {
      Response resp;
      resp =
          await dio.post(ConfigSingleton().loginUrl, data: loginModel.toJson());
      return right(TokenResponseEntity.fromJson(resp.data));
    } on DioException catch (e) {
      if (e.response != null) {
        return left(FailureError.fromJson(e.response!.data));
      }
      return left(FailureError());
    } catch (e) {
      return left(FailureError());
    }
  }
}
