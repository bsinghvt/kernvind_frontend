import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:kernvind/core/configuration/config.dart';
import 'package:kernvind/core/entities/success/success_msg.dart';
import 'package:kernvind/core/error/freezed_classes/failure_error.dart';
import 'package:kernvind/features/authenticated_user/features/user_llm/domain/entities/public_llm_list_entity.dart';
import 'package:kernvind/features/authenticated_user/features/user_llm/domain/entities/user_llm_details_entity.dart';
import 'package:kernvind/features/authenticated_user/features/user_llm/domain/entities/user_llm_update_entity.dart';
import 'package:kernvind/features/authenticated_user/shared/user_llm/domain/entities/user_llm_entity.dart';

abstract interface class UserLlmRemoteDatasource {
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

class UserLlmRemoteDatasourceImpl implements UserLlmRemoteDatasource {
  final Dio dio;

  UserLlmRemoteDatasourceImpl(this.dio);

  @override
  Future<Either<FailureError, UserLlmEntity>> createUserLlm(
      {required UserLlmEntity userLlmEntity}) async {
    try {
      Response resp;
      resp = await dio.post(ConfigSingleton().userLlmCreateUrl,
          data: userLlmEntity.toJson());
      return right(UserLlmEntity.fromJson(resp.data));
    } on DioException catch (e) {
      if (e.response != null) {
        try {
          return left(FailureError.fromJson(e.response!.data));
        } catch (e) {
          return left(FailureError());
        }
      }
      return left(FailureError());
    } catch (e) {
      return left(FailureError());
    }
  }

  @override
  Future<Either<FailureError, List<PublicLlmListEntity>>>
      getAvailableLlms() async {
    try {
      Response resp;
      resp = await dio.get(
        ConfigSingleton().publicLlmListUrl,
      );
      return right(listOfLlms(resp.data));
    } on DioException catch (e) {
      if (e.response != null) {
        try {
          return left(FailureError.fromJson(e.response!.data));
        } catch (e) {
          return left(FailureError());
        }
      }
      return left(FailureError());
    } catch (e) {
      return left(FailureError());
    }
  }

  @override
  Future<Either<FailureError, UserLlmDetailsEntity>> getUserLlmDetails(
      {required int userLlmId}) async {
    try {
      Response resp;
      resp = await dio.get(
        '${ConfigSingleton().userLlmDetailsUrl}/$userLlmId',
      );
      return right(UserLlmDetailsEntity.fromJson(resp.data));
    } on DioException catch (dioe) {
      if (dioe.response != null) {
        try {
          return left(FailureError.fromJson(dioe.response!.data));
        } catch (e) {
          return left(FailureError());
        }
      }
      return left(FailureError());
    } catch (e) {
      return left(FailureError());
    }
  }

  @override
  Future<Either<FailureError, UserLlmDetailsEntity>> updateUserLlm(
      {required UserLlmUpdateEntity userLlm}) async {
    try {
      Response resp;
      resp = await dio.put(ConfigSingleton().userLlmUpdateUrl,
          data: userLlm.toJson());
      return right(UserLlmDetailsEntity.fromJson(resp.data));
    } on DioException catch (e) {
      if (e.response != null) {
        try {
          return left(FailureError.fromJson(e.response!.data));
        } catch (e) {
          return left(FailureError());
        }
      }
      return left(FailureError());
    } catch (e) {
      return left(FailureError());
    }
  }

  @override
  Future<Either<FailureError, SuccessMsg>> deleteUserLlm(
      {required int userLlmId}) async {
    try {
      Response resp;
      resp =
          await dio.delete('${ConfigSingleton().userLlmDeleteUrl}/$userLlmId');
      return right(SuccessMsg.fromJson(resp.data));
    } on DioException catch (e) {
      if (e.response != null) {
        try {
          return left(FailureError.fromJson(e.response!.data));
        } catch (e) {
          return left(FailureError());
        }
      }
      return left(FailureError());
    } catch (e) {
      return left(FailureError());
    }
  }
}
