import 'dart:async';

import 'package:kernvind/features/playground/domain/entities/playground_chat_entity.dart';
import 'package:kernvind/features/playground/presentation/providers/playground_chat_remote_datasource_provider.dart';
import 'package:kernvind/features/playground/presentation/providers/stream_state_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'playground_chat_provider.g.dart';

@riverpod
class PlaygroundChat extends _$PlaygroundChat {
  Timer? _timer;
  @override
  Stream<List<PlaygroundChatEntity>> build(
      {required String botId, required String token}) async* {
    final chatRepo = await ref
        .watch(playgroundChatRepoProvider(botId: botId, token: token).future);
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
        if (stream.isEmpty) {
          ref.read(streamStateProvider.notifier).setStreamDone();
        } else {
          ref.read(streamStateProvider.notifier).setStreamNotDone();
          yield stream;
        }
      }
    } catch (e) {
      final closeReason = await chatRepo.closeChannel();
      closeReason.fold((error) {
        state = AsyncValue.error(error.error, StackTrace.current);
      }, (res) {});
    }
  }

  Future<void> sendMessage(PlaygroundChatEntity chatMessage) async {
    try {
      final chatRepo = await ref
          .watch(playgroundChatRepoProvider(botId: botId, token: token).future);
      if (chatRepo == null) {
        state = AsyncValue.error(
            'Not able to connect to server', StackTrace.current);
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
    final chatRepo = await ref
        .read(playgroundChatRepoProvider(botId: botId, token: token).future);
    _timer?.cancel();
    if (chatRepo == null) {
      return;
    }
    await chatRepo.closeChannel();
  }
}
