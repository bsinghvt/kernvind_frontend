// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RefreshTokenEntityImpl _$$RefreshTokenEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$RefreshTokenEntityImpl(
      iat: (json['iat'] as num).toInt(),
      nbf: (json['nbf'] as num).toInt(),
      jti: json['jti'] as String,
      identity: (json['identity'] as num).toInt(),
      exp: (json['exp'] as num).toInt(),
      type: json['type'] as String,
    );

Map<String, dynamic> _$$RefreshTokenEntityImplToJson(
        _$RefreshTokenEntityImpl instance) =>
    <String, dynamic>{
      'iat': instance.iat,
      'nbf': instance.nbf,
      'jti': instance.jti,
      'identity': instance.identity,
      'exp': instance.exp,
      'type': instance.type,
    };
