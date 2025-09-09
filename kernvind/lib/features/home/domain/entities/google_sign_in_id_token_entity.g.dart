// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_sign_in_id_token_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GoogleSignInIdTokenEntityImpl _$$GoogleSignInIdTokenEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$GoogleSignInIdTokenEntityImpl(
      idToken: json['id_token'] as String,
      platform: json['platform'] as String,
    );

Map<String, dynamic> _$$GoogleSignInIdTokenEntityImplToJson(
        _$GoogleSignInIdTokenEntityImpl instance) =>
    <String, dynamic>{
      'id_token': instance.idToken,
      'platform': instance.platform,
    };
