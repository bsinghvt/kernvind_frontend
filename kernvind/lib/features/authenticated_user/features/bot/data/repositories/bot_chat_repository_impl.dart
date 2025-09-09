import 'package:fpdart/fpdart.dart';
import 'package:kernvind/core/error/freezed_classes/failure_error.dart';
import 'package:kernvind/features/authenticated_user/features/bot/data/datasource/bot_chat_remote_datasource.dart';
import 'package:kernvind/features/authenticated_user/features/bot/domain/entities/bot_chat_entity.dart';
import 'package:kernvind/features/authenticated_user/features/bot/domain/repositories/bot_chat_repository_use_case.dart';

class BotChatRepositoryImpl implements BotChatRepositoryUseCase {
  final BotChatRemoteDatasourceImpl botChatRemoteDatasourceImpl;

  BotChatRepositoryImpl({required this.botChatRemoteDatasourceImpl});

  final Map<String, int> _indexMap = <String, int>{};
  int _index = 0;
  final List<BotChatEntity> _chatList = [];

  @override
  Stream<List<BotChatEntity>> getMessage({required int botId}) async* {
    await _getBotMessages(botId: botId);
    yield _chatList;
    final streams = botChatRemoteDatasourceImpl.getAnswer();
    try {
      await for (BotChatEntity stream in await streams) {
        if (_indexMap.containsKey(stream.messageId)) {
          var index = _indexMap[stream.messageId!];
          var chunk = _chatList[index!];
          final msg = BotChatEntity(
            messageId: stream.messageId!,
            userIdIn: stream.userIdIn,
            userIdOut: stream.userIdOut,
            botId: stream.botId,
            messageText: chunk.messageText + stream.messageText,
            messageUserName: chunk.messageUserName,
            notification: chunk.notification,
            created: stream.created,
            modified: stream.modified,
          );
          _chatList[index] = msg;
        } else {
          _indexMap[stream.messageId!] = _index;
          final msg = BotChatEntity(
            messageId: stream.messageId!,
            userIdIn: stream.userIdIn,
            userIdOut: stream.userIdOut,
            botId: stream.botId,
            notification: stream.notification,
            messageText: stream.messageText,
            messageUserName: stream.messageUserName,
            created: stream.created,
            modified: stream.modified,
          );
          _chatList.add(msg);
          _index++;
        }
        yield _chatList;
      }
    } catch (e) {
      throw ('Can not connect');
    }
  }

  Future<void> _getBotMessages({required int botId}) async {
    final msgListOrFailure =
        await botChatRemoteDatasourceImpl.getBotMessages(botId: botId);
    msgListOrFailure.fold((error) {
      _chatList.add(
        BotChatEntity(
            botId: -1,
            userIdIn: -1,
            messageText: 'Some error occured while getting older messages.',
            notification: true,
            created: DateTime.now()),
      );
      _index = _chatList.length;
    }, (msgList) {
      _chatList.addAll(msgList);
      _index = _chatList.length;
    });
  }

  @override
  Future<Either<FailureError, void>> sendMessage(
      BotChatEntity chatMessage) async {
    return await botChatRemoteDatasourceImpl.sendMessage(chatMessage);
  }

  @override
  Future<Either<FailureError, void>> closeChannel() async {
    return await botChatRemoteDatasourceImpl.closeChannel();
  }
}
