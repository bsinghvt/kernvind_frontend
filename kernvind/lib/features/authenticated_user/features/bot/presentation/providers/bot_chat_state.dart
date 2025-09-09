import 'package:kernvind/core/error/freezed_classes/failure_error.dart';
import 'package:kernvind/features/authenticated_user/features/bot/domain/entities/bot_chat_entity.dart';

sealed class BotChatState {
  const BotChatState();
}

final class BotChatStateInitial extends BotChatState {}

final class BotChatStateLoading extends BotChatState {}

final class BotChatStateSuccess extends BotChatState {
  final List<BotChatEntity> messages;

  BotChatStateSuccess({required this.messages});
}

final class BotChatStateFailure extends BotChatState {
  final FailureError error;
  const BotChatStateFailure(this.error);
}

final class BotChatSendMessageFailure extends BotChatState {
  final FailureError error;
  const BotChatSendMessageFailure(this.error);
}
