// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bot_llm_change_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BotLlmChangeEntityImpl _$$BotLlmChangeEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$BotLlmChangeEntityImpl(
      botId: (json['bot_id'] as num).toInt(),
      userLlmId: (json['user_llm_id'] as num).toInt(),
    );

Map<String, dynamic> _$$BotLlmChangeEntityImplToJson(
        _$BotLlmChangeEntityImpl instance) =>
    <String, dynamic>{
      'bot_id': instance.botId,
      'user_llm_id': instance.userLlmId,
    };
