import 'package:fpdart/fpdart.dart';
import 'package:kernvind/core/error/freezed_classes/failure_error.dart';
import 'package:kernvind/features/authenticated_user/features/bot/domain/entities/bot_chat_entity.dart';

abstract interface class BotChatRepositoryUseCase {
  Stream<List<BotChatEntity>> getMessage({required int botId});
  Future<Either<FailureError, void>> sendMessage(BotChatEntity chatMessage);
  Future<Either<FailureError, void>> closeChannel();
}
