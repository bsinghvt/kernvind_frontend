// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bot_datasource_change_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BotDatasourceChangeEntityImpl _$$BotDatasourceChangeEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$BotDatasourceChangeEntityImpl(
      botId: (json['bot_id'] as num).toInt(),
      datasourceId: (json['datasource_id'] as num).toInt(),
    );

Map<String, dynamic> _$$BotDatasourceChangeEntityImplToJson(
        _$BotDatasourceChangeEntityImpl instance) =>
    <String, dynamic>{
      'bot_id': instance.botId,
      'datasource_id': instance.datasourceId,
    };
