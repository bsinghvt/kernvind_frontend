// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_token_decode_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccessTokenDecodeEntityImpl _$$AccessTokenDecodeEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$AccessTokenDecodeEntityImpl(
      iat: (json['iat'] as num).toInt(),
      nbf: (json['nbf'] as num).toInt(),
      jti: json['jti'] as String,
      exp: (json['exp'] as num).toInt(),
      identity: (json['identity'] as num).toInt(),
      fresh: json['fresh'] as bool,
      type: json['type'] as String,
      userClaims: UserClaimsEntity.fromJson(
          json['user_claims'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AccessTokenDecodeEntityImplToJson(
        _$AccessTokenDecodeEntityImpl instance) =>
    <String, dynamic>{
      'iat': instance.iat,
      'nbf': instance.nbf,
      'jti': instance.jti,
      'exp': instance.exp,
      'identity': instance.identity,
      'fresh': instance.fresh,
      'type': instance.type,
      'user_claims': instance.userClaims,
    };
