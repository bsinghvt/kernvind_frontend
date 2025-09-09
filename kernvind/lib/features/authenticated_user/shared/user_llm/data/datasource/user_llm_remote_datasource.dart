import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:kernvind/core/configuration/config.dart';
import 'package:kernvind/core/error/freezed_classes/failure_error.dart';
import 'package:kernvind/features/authenticated_user/shared/user_llm/domain/entities/user_llm_entity.dart';

abstract interface class UserLlmRemoteDatasource {
  Future<Either<FailureError, List<UserLlmEntity>>> listLlms();
}

class UserLlmRemoteDatasourceImpl implements UserLlmRemoteDatasource {
  final Dio dio;

  UserLlmRemoteDatasourceImpl(this.dio);

  @override
  Future<Either<FailureError, List<UserLlmEntity>>> listLlms() async {
    try {
      Response resp;
      resp = await dio.get(ConfigSingleton().userLlmListUrl);
      return right(listOfUserLlms(resp.data));
    } on DioException catch (e) {
      if (e.response != null) {
        try {
          return left(FailureError.fromJson(e.response!.data));
        } catch (e) {
          return left(FailureError(error: e.toString()));
        }
      }
      return left(FailureError());
    } catch (e) {
      return left(FailureError());
    }
  }
}
