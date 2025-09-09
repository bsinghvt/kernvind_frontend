// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bot_add_user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BotAddUserEntityImpl _$$BotAddUserEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$BotAddUserEntityImpl(
      botId: (json['bot_id'] as num).toInt(),
      userToAddEmail: json['user_to_add_email'] as String,
      canAddUsers: json['can_add_users'] as bool,
      canChangeDatasource: json['can_change_datasource'] as bool,
      canSeeDatasource: json['can_see_datasource'] as bool,
      canSeeDatasourcefeed: json['can_see_datasourcefeed'] as bool,
      canChangeDatasourcefeed: json['can_change_datasourcefeed'] as bool,
      canSeeLlm: json['can_see_llm'] as bool,
      canChangeLlm: json['can_change_llm'] as bool,
    );

Map<String, dynamic> _$$BotAddUserEntityImplToJson(
        _$BotAddUserEntityImpl instance) =>
    <String, dynamic>{
      'bot_id': instance.botId,
      'user_to_add_email': instance.userToAddEmail,
      'can_add_users': instance.canAddUsers,
      'can_change_datasource': instance.canChangeDatasource,
      'can_see_datasource': instance.canSeeDatasource,
      'can_see_datasourcefeed': instance.canSeeDatasourcefeed,
      'can_change_datasourcefeed': instance.canChangeDatasourcefeed,
      'can_see_llm': instance.canSeeLlm,
      'can_change_llm': instance.canChangeLlm,
    };
