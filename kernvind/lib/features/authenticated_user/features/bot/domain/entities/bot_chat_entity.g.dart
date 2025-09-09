// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bot_chat_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BotChatEntityImpl _$$BotChatEntityImplFromJson(Map<String, dynamic> json) =>
    _$BotChatEntityImpl(
      chatMessageId: (json['chat_message_id'] as num?)?.toInt(),
      botId: (json['bot_id'] as num).toInt(),
      userIdIn: (json['user_id_in'] as num).toInt(),
      messageText: json['message_text'] as String,
      messageId: json['message_id'] as String?,
      messageUserName: json['message_user_name'] as String?,
      userIdOut: (json['user_id_out'] as num?)?.toInt(),
      notification: json['notification'] as bool?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      modified: json['modified'] == null
          ? null
          : DateTime.parse(json['modified'] as String),
    );

Map<String, dynamic> _$$BotChatEntityImplToJson(_$BotChatEntityImpl instance) =>
    <String, dynamic>{
      'chat_message_id': instance.chatMessageId,
      'bot_id': instance.botId,
      'user_id_in': instance.userIdIn,
      'message_text': instance.messageText,
      'message_id': instance.messageId,
      'message_user_name': instance.messageUserName,
      'user_id_out': instance.userIdOut,
      'notification': instance.notification,
      'created': instance.created?.toIso8601String(),
      'modified': instance.modified?.toIso8601String(),
    };
