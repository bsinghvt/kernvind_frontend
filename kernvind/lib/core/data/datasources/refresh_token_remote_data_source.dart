import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:kernvind/core/configuration/config.dart';
import 'package:kernvind/core/entities/JWT/refresh_token_response_entity.dart';
import 'package:kernvind/core/error/freezed_classes/failure_error.dart';

abstract interface class RefreshTokenRemoteDataSource {
  Future<Either<FailureError, RefreshTokenResponseEntity>> refreshToken(
      {required String refreshToken});
}

class RefreshTokenRemoteDataSourceImpl implements RefreshTokenRemoteDataSource {
  final Dio dio;

  RefreshTokenRemoteDataSourceImpl({required this.dio});
  @override
  Future<Either<FailureError, RefreshTokenResponseEntity>> refreshToken(
      {required String refreshToken}) async {
    try {
      Response resp;
      resp = await dio.post(ConfigSingleton().refreshTokenUrl,
          options: Options(headers: {
            "authorization": "Bearer $refreshToken",
          }));
      return right(RefreshTokenResponseEntity.fromJson(resp.data));
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
