// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_llm_bot_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserLlmBotEntityImpl _$$UserLlmBotEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$UserLlmBotEntityImpl(
      botId: (json['bot_id'] as num).toInt(),
      botName: json['bot_name'] as String,
      botDescription: json['bot_description'] as String?,
    );

Map<String, dynamic> _$$UserLlmBotEntityImplToJson(
        _$UserLlmBotEntityImpl instance) =>
    <String, dynamic>{
      'bot_id': instance.botId,
      'bot_name': instance.botName,
      'bot_description': instance.botDescription,
    };
