import 'dart:convert';

import 'package:fpdart/fpdart.dart';
import 'package:kernvind/core/error/freezed_classes/failure_error.dart';
import 'package:kernvind/features/playground/domain/entities/playground_chat_entity.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

abstract interface class PlaygroundChatRemoteDatasource {
  Future<Either<FailureError, void>> sendMessage(
      PlaygroundChatEntity chatMessage);
  Future<Stream<PlaygroundChatEntity>> getAnswer();
  Future<Either<FailureError, void>> closeChannel();
}

class PlaygroundChatRemoteDatasourceImpl
    implements PlaygroundChatRemoteDatasource {
  final WebSocketChannel channel;
  PlaygroundChatRemoteDatasourceImpl({required this.channel});
  @override
  Future<Stream<PlaygroundChatEntity>> getAnswer() async {
    try {
      await channel.ready;
      if (channel.closeCode != null) {
        if (channel.closeReason != null && channel.closeReason!.isNotEmpty) {
          throw (channel.closeReason!);
        }
        throw (channel.closeCode!);
      }
      final stream =
          channel.stream.asyncMap<PlaygroundChatEntity>((event) async {
        return PlaygroundChatEntity.fromJson(jsonDecode(event));
      });
      return stream;
    } catch (e) {
      throw ('Can not connect');
    }
  }

  @override
  Future<Either<FailureError, void>> sendMessage(
      PlaygroundChatEntity chatMessage) async {
    try {
      await channel.ready;
      if (channel.closeCode != null) {
        if (channel.closeReason != null && channel.closeReason!.isNotEmpty) {
          return left(FailureError(error: channel.closeReason!));
        }
        return left(FailureError(
            error:
                'The connection was closed due to inactivity. Please go back and reconnect.'));
      }
      return right(channel.sink.add(jsonEncode(chatMessage)));
    } catch (e) {
      return left(FailureError());
    }
  }

  @override
  Future<Either<FailureError, dynamic>> closeChannel() async {
    try {
      final res = await channel.sink.close();
      if (channel.closeReason != null && channel.closeCode != null) {
        return left(FailureError(error: channel.closeReason!));
      }
      return right(res);
    } catch (e) {
      return left(FailureError());
    }
  }
}
