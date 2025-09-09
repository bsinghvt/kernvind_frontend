// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bot_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BotEntityImpl _$$BotEntityImplFromJson(Map<String, dynamic> json) =>
    _$BotEntityImpl(
      botId: (json['bot_id'] as num?)?.toInt(),
      userLlmId: (json['user_llm_id'] as num?)?.toInt(),
      llmName: json['llm_name'] as String?,
      llmTypeName: json['llm_type_name'] as String?,
      userLlmName: json['user_llm_name'] as String?,
      userLlmDescription: json['user_llm_description'] as String?,
      botName: json['bot_name'] as String,
      botDescription: json['bot_description'] as String?,
      createdByUserId: (json['created_by_user_id'] as num).toInt(),
      createdByName: json['created_by_name'] as String,
      datasourceId: (json['datasource_id'] as num?)?.toInt(),
      datasourceName: json['datasource_name'] as String?,
      datasourceDesc: json['datasource_description'] as String?,
      isOwner: json['is_owner'] as bool?,
      canAddUsers: json['can_add_users'] as bool,
      canChangeDatasource: json['can_change_datasource'] as bool,
      canSeeDatasource: json['can_see_datasource'] as bool,
      canSeeDatasourcefeed: json['can_see_datasourcefeed'] as bool,
      canChangeDatasourcefeed: json['can_change_datasourcefeed'] as bool,
      canSeeLlm: json['can_see_llm'] as bool,
      canChangeLlm: json['can_change_llm'] as bool,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      modified: json['modified'] == null
          ? null
          : DateTime.parse(json['modified'] as String),
    );

Map<String, dynamic> _$$BotEntityImplToJson(_$BotEntityImpl instance) =>
    <String, dynamic>{
      'bot_id': instance.botId,
      'user_llm_id': instance.userLlmId,
      'llm_name': instance.llmName,
      'llm_type_name': instance.llmTypeName,
      'user_llm_name': instance.userLlmName,
      'user_llm_description': instance.userLlmDescription,
      'bot_name': instance.botName,
      'bot_description': instance.botDescription,
      'created_by_user_id': instance.createdByUserId,
      'created_by_name': instance.createdByName,
      'datasource_id': instance.datasourceId,
      'datasource_name': instance.datasourceName,
      'datasource_description': instance.datasourceDesc,
      'is_owner': instance.isOwner,
      'can_add_users': instance.canAddUsers,
      'can_change_datasource': instance.canChangeDatasource,
      'can_see_datasource': instance.canSeeDatasource,
      'can_see_datasourcefeed': instance.canSeeDatasourcefeed,
      'can_change_datasourcefeed': instance.canChangeDatasourcefeed,
      'can_see_llm': instance.canSeeLlm,
      'can_change_llm': instance.canChangeLlm,
      'created': instance.created?.toIso8601String(),
      'modified': instance.modified?.toIso8601String(),
    };
