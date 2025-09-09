// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bot_details_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BotDetailsEntityImpl _$$BotDetailsEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$BotDetailsEntityImpl(
      bot: BotEntity.fromJson(json['bot'] as Map<String, dynamic>),
      users: (json['users'] as List<dynamic>)
          .map((e) => BotUsersEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BotDetailsEntityImplToJson(
        _$BotDetailsEntityImpl instance) =>
    <String, dynamic>{
      'bot': instance.bot.toJson(),
      'users': instance.users.map((e) => e.toJson()).toList(),
    };
