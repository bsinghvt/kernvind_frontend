// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bot_users_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BotUsersEntityImpl _$$BotUsersEntityImplFromJson(Map<String, dynamic> json) =>
    _$BotUsersEntityImpl(
      userId: (json['user_id'] as num).toInt(),
      userRemoveError: json['userRemoveError'] as bool?,
      fullName: json['full_name'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$$BotUsersEntityImplToJson(
        _$BotUsersEntityImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'userRemoveError': instance.userRemoveError,
      'full_name': instance.fullName,
      'email': instance.email,
    };
