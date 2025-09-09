import 'package:fpdart/fpdart.dart';
import 'package:kernvind/core/error/freezed_classes/failure_error.dart';
import 'package:kernvind/features/playground/data/datasources/playground_chat_remote_datasource.dart';
import 'package:kernvind/features/playground/domain/entities/playground_chat_entity.dart';
import 'package:kernvind/features/playground/domain/repositories/playground_chat_repo.dart';

class PlaygroundChatRepoImpl implements PlaygroundChatRepo {
  final PlaygroundChatRemoteDatasourceImpl chatRemoteDatasourceImpl;
  final Map<String, int> _indexMap = <String, int>{};
  int _index = 0;
  final List<PlaygroundChatEntity> _chatList = [];

  PlaygroundChatRepoImpl({required this.chatRemoteDatasourceImpl});
  @override
  Stream<List<PlaygroundChatEntity>> getMessage(
      {required String botId}) async* {
    final streams = chatRemoteDatasourceImpl.getAnswer();
    try {
      await for (PlaygroundChatEntity stream in await streams) {
        if (stream.messageText == '||END||') {
          yield [];
        } else {
          if (_indexMap.containsKey(stream.messageId)) {
            var index = _indexMap[stream.messageId!];
            var chunk = _chatList[index!];
            final msg = PlaygroundChatEntity(
              messageId: stream.messageId!,
              botId: stream.botId,
              messageText: chunk.messageText + stream.messageText,
              messageUserName: chunk.messageUserName,
              created: DateTime.now(),
              modified: DateTime.now(),
            );
            _chatList[index] = msg;
          } else {
            _indexMap[stream.messageId!] = _index;
            final msg = PlaygroundChatEntity(
              messageId: stream.messageId!,
              botId: stream.botId,
              messageText: stream.messageText,
              messageUserName: stream.messageUserName,
              created: DateTime.now(),
              modified: DateTime.now(),
            );
            _chatList.add(msg);
            _index++;
          }
          yield _chatList;
        }
      }
    } catch (e) {
      throw ('Can not connect');
    }
  }

  @override
  Future<Either<FailureError, void>> sendMessage(
      PlaygroundChatEntity chatMessage) async {
    return await chatRemoteDatasourceImpl.sendMessage(chatMessage);
  }

  @override
  Future<Either<FailureError, void>> closeChannel() async {
    return await chatRemoteDatasourceImpl.closeChannel();
  }
}
