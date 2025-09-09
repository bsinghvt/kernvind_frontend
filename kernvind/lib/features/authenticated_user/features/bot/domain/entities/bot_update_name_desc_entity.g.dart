// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bot_update_name_desc_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BotUpdateNameDescEntityImpl _$$BotUpdateNameDescEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$BotUpdateNameDescEntityImpl(
      botId: (json['bot_id'] as num).toInt(),
      botName: json['bot_name'] as String,
      botDescription: json['bot_description'] as String?,
    );

Map<String, dynamic> _$$BotUpdateNameDescEntityImplToJson(
        _$BotUpdateNameDescEntityImpl instance) =>
    <String, dynamic>{
      'bot_id': instance.botId,
      'bot_name': instance.botName,
      'bot_description': instance.botDescription,
    };
