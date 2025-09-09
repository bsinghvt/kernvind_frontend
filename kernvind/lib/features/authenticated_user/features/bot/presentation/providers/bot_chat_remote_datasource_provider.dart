import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jwt_decode/jwt_decode.dart';
import 'package:kernvind/core/configuration/config.dart';
import 'package:kernvind/core/providers/app_dio/dio_with_auth_header.dart';
import 'package:kernvind/core/providers/jwt_auth/auth_token_state.dart';
import 'package:kernvind/core/providers/jwt_auth/auth_token_state_provider.dart';
import 'package:kernvind/features/authenticated_user/features/bot/data/datasource/bot_chat_remote_datasource.dart';
import 'package:kernvind/features/authenticated_user/features/bot/data/repositories/bot_chat_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
part 'bot_chat_remote_datasource_provider.g.dart';

@riverpod
Future<WebSocketChannel?> webSocketchannel(Ref ref,
    {required int botId}) async {
  final tokenState = await ref.watch(authTokenStateNotifierProvider.future);
  assert(tokenState is AvailableAccessTokenState);
  String token = '';
  if (tokenState is AvailableAccessTokenState) {
    token = tokenState.token;
  }
  if (Jwt.isExpired(token)) {
    await ref.read(authTokenStateNotifierProvider.notifier).tokenRefresh();
    assert(tokenState is AvailableAccessTokenState);
    if (tokenState is AvailableAccessTokenState) {
      token = tokenState.token;
    }
  }
  try {
    final channel = WebSocketChannel.connect(
      Uri.parse('${ConfigSingleton().botChatUrl}/$botId'),
      protocols: ['authorization', token],
    );
    await channel.ready;
    return channel;
  } catch (e) {
    return null;
  }
}

@riverpod
Future<BotChatRepositoryImpl?> botChatRepo(Ref ref,
    {required int botId}) async {
  final webSocket =
      await ref.watch(webSocketchannelProvider(botId: botId).future);
  ref.onDispose(
    () {
      if (webSocket != null) {
        webSocket.sink.close();
      }
    },
  );
  final dio = ref.read(dioWithAuthHeaderProvider);
  if (webSocket != null) {
    return BotChatRepositoryImpl(
        botChatRemoteDatasourceImpl:
            BotChatRemoteDatasourceImpl(channel: webSocket, dio: dio));
  }
  return null;
}
