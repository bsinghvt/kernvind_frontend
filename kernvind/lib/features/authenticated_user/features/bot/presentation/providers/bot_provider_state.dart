import 'package:kernvind/core/error/freezed_classes/failure_error.dart';
import 'package:kernvind/features/authenticated_user/features/bot/domain/entities/bot_entity.dart';

sealed class BotProviderState {
  const BotProviderState();
}

final class BotProviderStateInitial extends BotProviderState {}

final class BotProviderStateLoading extends BotProviderState {}

final class BotListSuccessState extends BotProviderState {
  final List<BotEntity> bots;
  const BotListSuccessState(this.bots);
}

final class BotCreateSuccessState extends BotProviderState {
  final List<BotEntity> bots;
  const BotCreateSuccessState(this.bots);
}

final class BotListFailure extends BotProviderState {
  final FailureError error;
  const BotListFailure(this.error);
}

final class BotCreateFailure extends BotProviderState {
  final FailureError error;
  const BotCreateFailure(this.error);
}
