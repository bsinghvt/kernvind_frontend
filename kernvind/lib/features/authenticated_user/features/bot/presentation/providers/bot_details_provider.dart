import 'package:kernvind/features/authenticated_user/features/bot/domain/entities/bot_details_entity.dart';
import 'package:kernvind/features/authenticated_user/features/bot/presentation/providers/bot_details_state.dart';
import 'package:kernvind/features/authenticated_user/features/bot/presentation/providers/bot_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'bot_details_provider.g.dart';

@riverpod
class BotDetails extends _$BotDetails {
  @override
  BotDetailsState build({required int botId}) {
    state = BotDetailsStateInitial();
    getBotDetails(botId: botId);
    return state;
  }

  Future<void> getBotDetails({required int botId}) async {
    final botRepositoryImpl = ref.read(botRepositoryProvider);
    state = BotDetailsStateLoading();
    final botDetailsOrFailure =
        await botRepositoryImpl.botDetails(botId: botId);
    botDetailsOrFailure.fold((error) => state = BotDetailsStateFailure(error),
        (botDetails) => state = BotDetailsStateSuccess(botDetails: botDetails));
  }

  void setBotDetailsState(BotDetailsEntity botDetails) {
    state = BotDetailsStateSuccess(botDetails: botDetails);
  }
}
