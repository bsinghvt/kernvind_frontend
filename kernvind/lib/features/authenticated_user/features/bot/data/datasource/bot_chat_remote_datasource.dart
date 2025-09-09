import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:kernvind/core/configuration/config.dart';
import 'package:kernvind/core/error/freezed_classes/failure_error.dart';
import 'package:kernvind/features/authenticated_user/features/bot/domain/entities/bot_chat_entity.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

abstract interface class BotChatRemoteDatasource {
  Future<Either<FailureError, void>> sendMessage(BotChatEntity chatMessage);
  Future<Stream<BotChatEntity>> getAnswer();
  Future<Either<FailureError, void>> closeChannel();
  Future<Either<FailureError, List<BotChatEntity>>> getBotMessages(
      {required int botId});
}

class BotChatRemoteDatasourceImpl implements BotChatRemoteDatasource {
  final WebSocketChannel channel;
  final Dio dio;

  BotChatRemoteDatasourceImpl({required this.dio, required this.channel});
  @override
  Future<Stream<BotChatEntity>> getAnswer() async {
    try {
      await channel.ready;
      if (channel.closeCode != null) {
        if (channel.closeReason != null && channel.closeReason!.isNotEmpty) {
          throw (channel.closeReason!);
        }
        throw (channel.closeCode!);
      }
      final stream = channel.stream.asyncMap<BotChatEntity>((event) async {
        return BotChatEntity.fromJson(jsonDecode(event));
      });
      return stream;
    } catch (e) {
      throw ('Can not connect');
    }
  }

  @override
  Future<Either<FailureError, void>> sendMessage(
      BotChatEntity chatMessage) async {
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

  @override
  Future<Either<FailureError, List<BotChatEntity>>> getBotMessages(
      {required int botId}) async {
    try {
      Response resp;
      resp = await dio.get('${ConfigSingleton().botChatMessagesUrl}/$botId');
      return right(listOfBotMessages(resp.data));
    } on DioException catch (e) {
      if (e.response != null) {
        try {
          return left(FailureError.fromJson(e.response!.data));
        } catch (e) {
          return left(FailureError(error: e.toString()));
        }
      }
      return left(FailureError());
    } catch (e) {
      return left(FailureError());
    }
  }
}
