// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'bot_chat_entity.freezed.dart';
part 'bot_chat_entity.g.dart';

List<BotChatEntity> listOfBotMessages(List<dynamic> listData) =>
    List<BotChatEntity>.from(listData.map((x) => BotChatEntity.fromJson(x)));

@freezed
class BotChatEntity with _$BotChatEntity {
  factory BotChatEntity({
    @JsonKey(name: 'chat_message_id') int? chatMessageId,
    @JsonKey(name: 'bot_id') required int botId,
    @JsonKey(name: 'user_id_in') required int userIdIn,
    @JsonKey(name: 'message_text') required String messageText,
    @JsonKey(name: 'message_id') String? messageId,
    @JsonKey(name: 'message_user_name') String? messageUserName,
    @JsonKey(name: 'user_id_out') int? userIdOut,
    @JsonKey(name: 'notification') bool? notification,
    DateTime? created,
    DateTime? modified,
  }) = _BotChatEntity;

  factory BotChatEntity.fromJson(Map<String, dynamic> json) =>
      _$BotChatEntityFromJson(json);
}
