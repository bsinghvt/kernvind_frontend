// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokenResponseEntityImpl _$$TokenResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$TokenResponseEntityImpl(
      refreshToken: json['refresh_token'] as String,
      token: json['token'] as String,
    );

Map<String, dynamic> _$$TokenResponseEntityImplToJson(
        _$TokenResponseEntityImpl instance) =>
    <String, dynamic>{
      'refresh_token': instance.refreshToken,
      'token': instance.token,
    };
