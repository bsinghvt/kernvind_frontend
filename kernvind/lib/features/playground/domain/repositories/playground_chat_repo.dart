import 'package:fpdart/fpdart.dart';
import 'package:kernvind/core/error/freezed_classes/failure_error.dart';
import 'package:kernvind/features/playground/domain/entities/playground_chat_entity.dart';

abstract interface class PlaygroundChatRepo {
  Stream<List<PlaygroundChatEntity>> getMessage({required String botId});
  Future<Either<FailureError, void>> sendMessage(
      PlaygroundChatEntity chatMessage);
  Future<Either<FailureError, void>> closeChannel();
}
