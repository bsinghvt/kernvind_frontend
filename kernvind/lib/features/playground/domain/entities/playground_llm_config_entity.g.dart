// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playground_llm_config_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaygroundLlmConfigEntityImpl _$$PlaygroundLlmConfigEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$PlaygroundLlmConfigEntityImpl(
      llmName: json['llm_name'] as String?,
      llmType: json['llm_type'] as String?,
      url: json['url'] as String?,
      apiKey: json['api_key'] as String?,
      apiKeyHeader: json['api_key_header'] as String?,
      userName: json['user_name'] as String?,
      password: json['password'] as String?,
      useMyLlm: json['use_my_llm'] as bool,
    );

Map<String, dynamic> _$$PlaygroundLlmConfigEntityImplToJson(
        _$PlaygroundLlmConfigEntityImpl instance) =>
    <String, dynamic>{
      'llm_name': instance.llmName,
      'llm_type': instance.llmType,
      'url': instance.url,
      'api_key': instance.apiKey,
      'api_key_header': instance.apiKeyHeader,
      'user_name': instance.userName,
      'password': instance.password,
      'use_my_llm': instance.useMyLlm,
    };
