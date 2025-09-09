import 'package:kernvind/core/error/freezed_classes/failure_error.dart';
import 'package:kernvind/features/authenticated_user/features/bot/domain/entities/bot_details_entity.dart';

sealed class BotDetailsState {
  const BotDetailsState();
}

final class BotDetailsStateInitial extends BotDetailsState {}

final class BotDetailsStateLoading extends BotDetailsState {}

final class BotDetailsStateSuccess extends BotDetailsState {
  final BotDetailsEntity botDetails;

  BotDetailsStateSuccess({required this.botDetails});
}

final class BotDetailsStateFailure extends BotDetailsState {
  final FailureError error;
  const BotDetailsStateFailure(this.error);
}
