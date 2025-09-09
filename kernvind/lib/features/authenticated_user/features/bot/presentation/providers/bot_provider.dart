import 'package:kernvind/features/authenticated_user/features/bot/domain/entities/bot_entity.dart';
import 'package:kernvind/features/authenticated_user/features/bot/presentation/providers/bot_provider_state.dart';
import 'package:kernvind/features/authenticated_user/features/bot/presentation/providers/bot_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'bot_provider.g.dart';

@riverpod
class BotProvider extends _$BotProvider {
  @override
  BotProviderState build() {
    state = BotProviderStateInitial();
    getBotList();
    return state;
  }

  Future<void> getBotList({bool isBotCreate = false}) async {
    final botRepositoryImpl = ref.read(botRepositoryProvider);
    state = BotProviderStateLoading();
    final botListOrFailure = await botRepositoryImpl.listBots();
    botListOrFailure.fold((error) => state = BotListFailure(error), (botList) {
      if (isBotCreate) {
        state = BotCreateSuccessState(botList);
      } else {
        state = BotListSuccessState(botList);
      }
    });
  }

  Future<void> createBot(BotEntity bot) async {
    final botRepositoryImpl = ref.read(botRepositoryProvider);
    final prevState = state;
    state = BotProviderStateLoading();
    final botCreateOrFailure = await botRepositoryImpl.createBot(bot: bot);
    botCreateOrFailure.fold((error) => state = BotCreateFailure(error),
        (botResp) {
      if (prevState is BotListSuccessState) {
        final botList = prevState.bots;
        final newBotList = [...botList, botResp];
        state = BotCreateSuccessState(newBotList);
      } else {
        getBotList(isBotCreate: true);
      }
    });
  }

  void setBotListState(List<BotEntity> botList) async {
    state = BotListSuccessState(botList);
  }
}
