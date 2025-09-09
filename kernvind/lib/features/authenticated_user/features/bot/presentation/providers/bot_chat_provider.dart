import 'dart:async';

import 'package:kernvind/features/authenticated_user/features/bot/domain/entities/bot_chat_entity.dart';
import 'package:kernvind/features/authenticated_user/features/bot/presentation/providers/bot_chat_remote_datasource_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'bot_chat_provider.g.dart';

@riverpod
class BotChatMessage extends _$BotChatMessage {
  Timer? _timer;
  @override
  Stream<List<BotChatEntity>> build({required int botId}) async* {
    final chatRepo = await ref.watch(botChatRepoProvider(botId: botId).future);
    if (chatRepo == null) {
      state = AsyncError(
          'Chat server is not available, please try again', StackTrace.current);
      return;
    }
    //Timer.periodic(const Duration(seconds: 55), _handleTimeout);
    ref.onDispose(() {
      _closeChannel();
    });
    try {
      final getMessages = chatRepo.getMessage(botId: botId).asBroadcastStream();
      await for (final stream in getMessages) {
        yield stream;
      }
    } catch (e) {
      final closeReason = await chatRepo.closeChannel();
      closeReason.fold(
          (error) => state = AsyncValue.error(error.error, StackTrace.current),
          (res) {});
    }
  }

/*
  void _handleTimeout(Timer timer) {
    _timer = timer;
    sendMessage(BotChatEntity(
      botId: -1,
      userIdIn: -1,
      messageText: 'zzzzzzz',
      notification: true,
    ));
  }
*/
  Future<void> sendMessage(BotChatEntity chatMessage) async {
    try {
      final chatRepo =
          await ref.watch(botChatRepoProvider(botId: botId).future);
      if (chatRepo == null) {
        return;
      }

      final sendOrFailure = await chatRepo.sendMessage(chatMessage);
      await sendOrFailure.fold((error) async {
        state = AsyncValue.error(error.error, StackTrace.current);
      }, (vd) {});
    } catch (e) {
      state =
          AsyncValue.error('Server closed the connection', StackTrace.current);
    }
  }

  Future<void> _closeChannel() async {
    final chatRepo = await ref.read(botChatRepoProvider(botId: botId).future);
    _timer?.cancel();
    if (chatRepo == null) {
      return;
    }
    await chatRepo.closeChannel();
  }
}
