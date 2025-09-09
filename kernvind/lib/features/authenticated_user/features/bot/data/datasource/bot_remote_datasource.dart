import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:kernvind/core/configuration/config.dart';
import 'package:kernvind/core/entities/success/success_msg.dart';
import 'package:kernvind/core/error/freezed_classes/failure_error.dart';
import 'package:kernvind/features/authenticated_user/features/bot/domain/entities/bot_add_user_entity.dart';
import 'package:kernvind/features/authenticated_user/features/bot/domain/entities/bot_datasource_change_entity.dart';
import 'package:kernvind/features/authenticated_user/features/bot/domain/entities/bot_details_entity.dart';
import 'package:kernvind/features/authenticated_user/features/bot/domain/entities/bot_entity.dart';
import 'package:kernvind/features/authenticated_user/features/bot/domain/entities/bot_llm_change_entity.dart';
import 'package:kernvind/features/authenticated_user/features/bot/domain/entities/bot_update_name_desc_entity.dart';

abstract interface class BotRemoteDatasource {
  Future<Either<FailureError, BotEntity>> createBot({required BotEntity bot});
  Future<Either<FailureError, List<BotEntity>>> listBots();
  Future<Either<FailureError, BotDetailsEntity>> botDetails(
      {required int botId});
  Future<Either<FailureError, BotDetailsEntity>> updateBotNameAndDesc(
      {required BotUpdateNameDescEntity bot});
  Future<Either<FailureError, BotDetailsEntity>> addBotDatasource(
      {required BotDatasourceChangeEntity bot});
  Future<Either<FailureError, BotDetailsEntity>> addBotUser(
      {required BotAddUserEntity bot});
  Future<Either<FailureError, SuccessMsg>> deleteBot({required int botId});
  Future<Either<FailureError, BotDetailsEntity>> removeDatasourceFromBot(
      {required int botId});
  Future<Either<FailureError, BotDetailsEntity>> removeUserFromBot(
      {required int botId, required int removeUserId});
  Future<Either<FailureError, BotDetailsEntity>> botChangeLlm(
      {required BotLlmChangeEntity botLlmChange});
}

class BotRemoteDatasourceImpl implements BotRemoteDatasource {
  final Dio dio;

  BotRemoteDatasourceImpl(this.dio);

  @override
  Future<Either<FailureError, BotEntity>> createBot(
      {required BotEntity bot}) async {
    try {
      Response resp;
      resp = await dio.post(ConfigSingleton().botCreateUrl, data: bot.toJson());
      return right(BotEntity.fromJson(resp.data));
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
  Future<Either<FailureError, List<BotEntity>>> listBots() async {
    try {
      Response resp;
      resp = await dio.get(ConfigSingleton().botListUrl);
      return right(listOfBots(resp.data));
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
  Future<Either<FailureError, BotDetailsEntity>> botDetails(
      {required int botId}) async {
    try {
      Response resp;
      resp = await dio.get('${ConfigSingleton().botDetailsUrl}/$botId');
      return right(BotDetailsEntity.fromJson(resp.data));
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
  Future<Either<FailureError, BotDetailsEntity>> updateBotNameAndDesc(
      {required BotUpdateNameDescEntity bot}) async {
    try {
      Response resp;
      resp = await dio.put(ConfigSingleton().botUpdateNameAndDescUrl,
          data: bot.toJson());
      return right(BotDetailsEntity.fromJson(resp.data));
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
  Future<Either<FailureError, BotDetailsEntity>> addBotDatasource(
      {required BotDatasourceChangeEntity bot}) async {
    try {
      Response resp;
      resp = await dio.put(ConfigSingleton().botUpdateDatasourceUrl,
          data: bot.toJson());
      return right(BotDetailsEntity.fromJson(resp.data));
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
  Future<Either<FailureError, BotDetailsEntity>> addBotUser(
      {required BotAddUserEntity bot}) async {
    try {
      Response resp;
      resp = await dio.put(ConfigSingleton().botAddUserUrl, data: bot.toJson());
      return right(BotDetailsEntity.fromJson(resp.data));
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
  Future<Either<FailureError, SuccessMsg>> deleteBot(
      {required int botId}) async {
    try {
      Response resp;
      resp = await dio.delete('${ConfigSingleton().botDeleteUrl}/$botId');
      return right(SuccessMsg.fromJson(resp.data));
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
  Future<Either<FailureError, BotDetailsEntity>> removeDatasourceFromBot(
      {required int botId}) async {
    try {
      Response resp;
      resp = await dio
          .delete('${ConfigSingleton().botRemoveDatasourceUrl}/$botId');
      return right(BotDetailsEntity.fromJson(resp.data));
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
  Future<Either<FailureError, BotDetailsEntity>> removeUserFromBot(
      {required int botId, required int removeUserId}) async {
    try {
      Response resp;
      resp = await dio
          .delete('${ConfigSingleton().botRemoveUserUrl}/$botId/$removeUserId');
      return right(BotDetailsEntity.fromJson(resp.data));
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
  Future<Either<FailureError, BotDetailsEntity>> botChangeLlm(
      {required BotLlmChangeEntity botLlmChange}) async {
    try {
      Response resp;
      resp = await dio.put(ConfigSingleton().botChangeLlmrUrl,
          data: botLlmChange.toJson());
      return right(BotDetailsEntity.fromJson(resp.data));
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
