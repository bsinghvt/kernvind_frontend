// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_llm_config_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserLlmConfigEntityImpl _$$UserLlmConfigEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$UserLlmConfigEntityImpl(
      url: json['url'] as String?,
      apiKey: json['api_key'] as String?,
      apiKeyHeader: json['api_key_header'] as String?,
      userName: json['user_name'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$$UserLlmConfigEntityImplToJson(
        _$UserLlmConfigEntityImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'api_key': instance.apiKey,
      'api_key_header': instance.apiKeyHeader,
      'user_name': instance.userName,
      'password': instance.password,
    };
