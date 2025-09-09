import 'package:kernvind/features/authenticated_user/features/bot/domain/entities/bot_add_user_entity.dart';
import 'package:kernvind/features/authenticated_user/features/bot/domain/entities/bot_datasource_change_entity.dart';
import 'package:kernvind/features/authenticated_user/features/bot/domain/entities/bot_llm_change_entity.dart';
import 'package:kernvind/features/authenticated_user/features/bot/domain/entities/bot_update_name_desc_entity.dart';
import 'package:kernvind/features/authenticated_user/features/bot/presentation/providers/bot_details_edit_state.dart';
import 'package:kernvind/features/authenticated_user/features/bot/presentation/providers/bot_details_provider.dart';
import 'package:kernvind/features/authenticated_user/features/bot/presentation/providers/bot_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'bot_details_edit.g.dart';

@riverpod
class BotDetailsEdit extends _$BotDetailsEdit {
  @override
  BotDetailsEditState build() {
    return BotDetailsEditStateInitial();
  }

  Future<void> updateBotNameAndDesc(
      {required BotUpdateNameDescEntity bot}) async {
    final botRepositoryImpl = ref.read(botRepositoryProvider);
    final botDetailsOrFailure =
        await botRepositoryImpl.updateBotNameAndDesc(bot: bot);
    botDetailsOrFailure
        .fold((error) => state = BotDetailsNameAndDescEditStateFailure(error),
            (botDetails) {
      state = const BotDetailsEditStateSuccess();
      ref
          .read(botDetailsProvider(botId: botDetails.bot.botId!).notifier)
          .setBotDetailsState(botDetails);
    });
  }

  Future<void> changeOrAddDatasource(
      {required BotDatasourceChangeEntity bot}) async {
    final botRepositoryImpl = ref.read(botRepositoryProvider);
    final botDetailsOrFailure =
        await botRepositoryImpl.addBotDatasource(bot: bot);
    botDetailsOrFailure
        .fold((error) => state = BotDetailsDatasourceAddEditStateFailure(error),
            (botDetails) {
      state = const BotDetailsEditStateSuccess();
      ref
          .read(botDetailsProvider(botId: botDetails.bot.botId!).notifier)
          .setBotDetailsState(botDetails);
    });
  }

  Future<void> addUserToBot({required BotAddUserEntity bot}) async {
    final botRepositoryImpl = ref.read(botRepositoryProvider);
    final botDetailsOrFailure = await botRepositoryImpl.addBotUser(bot: bot);
    botDetailsOrFailure
        .fold((error) => state = BotDetailsUserAddEditStateFailure(error),
            (botDetails) {
      state = const BotDetailsEditStateSuccess();
      ref
          .read(botDetailsProvider(botId: botDetails.bot.botId!).notifier)
          .setBotDetailsState(botDetails);
    });
  }

  Future<void> deleteBot({required int botId}) async {
    final botRepositoryImpl = ref.read(botRepositoryProvider);
    final botDeleteOrFailure = await botRepositoryImpl.deleteBot(botId: botId);
    botDeleteOrFailure.fold((error) => state = BotDeleteStateFailure(error),
        (success) => state = const BotDeleteStateSuccess());
  }

  Future<void> botRemoveDatasource({required int botId}) async {
    final botRepositoryImpl = ref.read(botRepositoryProvider);
    final botRemoveDatasourceOrFailure =
        await botRepositoryImpl.removeDatasourceFromBot(botId: botId);
    botRemoveDatasourceOrFailure
        .fold((error) => state = BotRemoveDatasourceStateFailure(error),
            (botDetails) {
      state = const BotRemoveDatasourceStateSuccess();
      ref
          .read(botDetailsProvider(botId: botDetails.bot.botId!).notifier)
          .setBotDetailsState(botDetails);
    });
  }

  Future<void> botRemoveUser(
      {required int botId, required int removeUserId}) async {
    final botRepositoryImpl = ref.read(botRepositoryProvider);
    final botRemoveUserOrFailure = await botRepositoryImpl.removeUserFromBot(
        botId: botId, removeUserId: removeUserId);
    botRemoveUserOrFailure.fold(
        (error) => state = BotRemoveUserStateFailure(error), (botDetails) {
      state = const BotRemoveUserStateSuccess();
      ref
          .read(botDetailsProvider(botId: botDetails.bot.botId!).notifier)
          .setBotDetailsState(botDetails);
    });
  }

  Future<void> botChangeLlm({required BotLlmChangeEntity botLlmChange}) async {
    final botRepositoryImpl = ref.read(botRepositoryProvider);
    final botChangeLlmOrFailure =
        await botRepositoryImpl.botChangeLlm(botLlmChange: botLlmChange);
    botChangeLlmOrFailure
        .fold((error) => state = BotLlmChangeStateFailure(error), (botDetails) {
      state = const BotDetailsEditStateSuccess();
      ref
          .read(botDetailsProvider(botId: botDetails.bot.botId!).notifier)
          .setBotDetailsState(botDetails);
    });
  }
}
