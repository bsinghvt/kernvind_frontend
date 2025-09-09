import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:kernvind/core/configuration/config.dart';
import 'package:kernvind/core/entities/JWT/token_response_entity.dart';
import 'package:kernvind/core/error/freezed_classes/failure_error.dart';
import 'package:kernvind/features/home/domain/entities/google_sign_in_id_token_entity.dart';

abstract interface class SocialAuthRemoteDatasource {
  Future<Either<FailureError, TokenResponseEntity>> googleSignInUser(
      {required GoogleSignInIdTokenEntity idTokenEntity});
}

class SocialAuthRemoteDatasourceImpl implements SocialAuthRemoteDatasource {
  final Dio dio;

  SocialAuthRemoteDatasourceImpl(this.dio);
  @override
  Future<Either<FailureError, TokenResponseEntity>> googleSignInUser(
      {required GoogleSignInIdTokenEntity idTokenEntity}) async {
    try {
      Response resp;
      resp = await dio.post(ConfigSingleton().googleSignInUrl,
          data: idTokenEntity.toJson());
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
