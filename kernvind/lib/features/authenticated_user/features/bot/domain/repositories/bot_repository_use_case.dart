import 'package:fpdart/fpdart.dart';
import 'package:kernvind/core/entities/success/success_msg.dart';
import 'package:kernvind/core/error/freezed_classes/failure_error.dart';
import 'package:kernvind/features/authenticated_user/features/bot/domain/entities/bot_add_user_entity.dart';
import 'package:kernvind/features/authenticated_user/features/bot/domain/entities/bot_datasource_change_entity.dart';
import 'package:kernvind/features/authenticated_user/features/bot/domain/entities/bot_details_entity.dart';
import 'package:kernvind/features/authenticated_user/features/bot/domain/entities/bot_entity.dart';
import 'package:kernvind/features/authenticated_user/features/bot/domain/entities/bot_llm_change_entity.dart';
import 'package:kernvind/features/authenticated_user/features/bot/domain/entities/bot_update_name_desc_entity.dart';

abstract interface class BotRepositoryUseCase {
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
