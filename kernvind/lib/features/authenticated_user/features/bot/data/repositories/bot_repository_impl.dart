import 'package:kernvind/core/entities/success/success_msg.dart';
import 'package:kernvind/core/error/freezed_classes/failure_error.dart';
import 'package:kernvind/features/authenticated_user/features/bot/data/datasource/bot_remote_datasource.dart';
import 'package:kernvind/features/authenticated_user/features/bot/domain/entities/bot_add_user_entity.dart';
import 'package:kernvind/features/authenticated_user/features/bot/domain/entities/bot_datasource_change_entity.dart';
import 'package:kernvind/features/authenticated_user/features/bot/domain/entities/bot_details_entity.dart';
import 'package:kernvind/features/authenticated_user/features/bot/domain/entities/bot_entity.dart';
import 'package:kernvind/features/authenticated_user/features/bot/domain/entities/bot_llm_change_entity.dart';
import 'package:kernvind/features/authenticated_user/features/bot/domain/entities/bot_update_name_desc_entity.dart';
import 'package:kernvind/features/authenticated_user/features/bot/domain/repositories/bot_repository_use_case.dart';
import 'package:fpdart/fpdart.dart';

class BotRepositoryImpl implements BotRepositoryUseCase {
  final BotRemoteDatasourceImpl botRemoteDatasourceImpl;

  BotRepositoryImpl({required this.botRemoteDatasourceImpl});
  @override
  Future<Either<FailureError, BotEntity>> createBot({required BotEntity bot}) {
    return botRemoteDatasourceImpl.createBot(bot: bot);
  }

  @override
  Future<Either<FailureError, List<BotEntity>>> listBots() {
    return botRemoteDatasourceImpl.listBots();
  }

  @override
  Future<Either<FailureError, BotDetailsEntity>> botDetails(
      {required int botId}) {
    return botRemoteDatasourceImpl.botDetails(botId: botId);
  }

  @override
  Future<Either<FailureError, BotDetailsEntity>> updateBotNameAndDesc(
      {required BotUpdateNameDescEntity bot}) {
    return botRemoteDatasourceImpl.updateBotNameAndDesc(bot: bot);
  }

  @override
  Future<Either<FailureError, BotDetailsEntity>> addBotDatasource(
      {required BotDatasourceChangeEntity bot}) async {
    return botRemoteDatasourceImpl.addBotDatasource(bot: bot);
  }

  @override
  Future<Either<FailureError, BotDetailsEntity>> addBotUser(
      {required BotAddUserEntity bot}) {
    return botRemoteDatasourceImpl.addBotUser(bot: bot);
  }

  @override
  Future<Either<FailureError, SuccessMsg>> deleteBot({required int botId}) {
    return botRemoteDatasourceImpl.deleteBot(botId: botId);
  }

  @override
  Future<Either<FailureError, BotDetailsEntity>> removeDatasourceFromBot(
      {required int botId}) {
    return botRemoteDatasourceImpl.removeDatasourceFromBot(botId: botId);
  }

  @override
  Future<Either<FailureError, BotDetailsEntity>> removeUserFromBot(
      {required int botId, required int removeUserId}) {
    return botRemoteDatasourceImpl.removeUserFromBot(
        botId: botId, removeUserId: removeUserId);
  }

  @override
  Future<Either<FailureError, BotDetailsEntity>> botChangeLlm(
      {required BotLlmChangeEntity botLlmChange}) {
    return botRemoteDatasourceImpl.botChangeLlm(botLlmChange: botLlmChange);
  }
}
