// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playground_chat_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaygroundChatEntityImpl _$$PlaygroundChatEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$PlaygroundChatEntityImpl(
      botId: json['bot_id'] as String,
      messageText: json['message_text'] as String,
      messageId: json['message_id'] as String?,
      messageUserName: json['message_user_name'] as String?,
      firstMessage: json['first_message'] as bool?,
      llmConfig: json['llm_config'] == null
          ? null
          : PlaygroundLlmConfigEntity.fromJson(
              json['llm_config'] as Map<String, dynamic>),
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      modified: json['modified'] == null
          ? null
          : DateTime.parse(json['modified'] as String),
    );

Map<String, dynamic> _$$PlaygroundChatEntityImplToJson(
        _$PlaygroundChatEntityImpl instance) =>
    <String, dynamic>{
      'bot_id': instance.botId,
      'message_text': instance.messageText,
      'message_id': instance.messageId,
      'message_user_name': instance.messageUserName,
      'first_message': instance.firstMessage,
      'llm_config': instance.llmConfig?.toJson(),
      'created': instance.created?.toIso8601String(),
      'modified': instance.modified?.toIso8601String(),
    };
