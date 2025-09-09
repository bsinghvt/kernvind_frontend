import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jwt_decode/jwt_decode.dart';
import 'package:kernvind/core/configuration/config.dart';
import 'package:kernvind/features/playground/data/datasources/playground_chat_remote_datasource.dart';
import 'package:kernvind/features/playground/data/repositories/playground_chat_repo_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

part 'playground_chat_remote_datasource_provider.g.dart';

@riverpod
Future<WebSocketChannel?> webSocketchannel(Ref ref,
    {required String botId, required String token}) async {
  if (Jwt.isExpired(token)) {
    return null;
  }
  try {
    final channel = WebSocketChannel.connect(
      Uri.parse('${ConfigSingleton().playgroundChatUrl}/$botId'),
      protocols: ['authorization', token],
    );
    await channel.ready;
    return channel;
  } catch (e) {
    return null;
  }
}

@riverpod
Future<PlaygroundChatRepoImpl?> playgroundChatRepo(Ref ref,
    {required String botId, required String token}) async {
  final webSocket = await ref
      .watch(webSocketchannelProvider(botId: botId, token: token).future);
  ref.onDispose(
    () {
      if (webSocket != null) {
        webSocket.sink.close();
      }
    },
  );
  if (webSocket != null) {
    return PlaygroundChatRepoImpl(
        chatRemoteDatasourceImpl:
            PlaygroundChatRemoteDatasourceImpl(channel: webSocket));
  }
  return null;
}
