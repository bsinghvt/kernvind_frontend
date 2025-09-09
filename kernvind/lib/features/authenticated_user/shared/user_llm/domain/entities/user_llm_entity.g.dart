// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_llm_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserLlmEntityImpl _$$UserLlmEntityImplFromJson(Map<String, dynamic> json) =>
    _$UserLlmEntityImpl(
      userLlmId: (json['user_llm_id'] as num?)?.toInt(),
      llmId: json['llm_id'] as String,
      userLlmName: json['user_llm_name'] as String,
      userLlmDescription: json['user_llm_description'] as String?,
      llmType: json['llm_type'] as String,
      userId: (json['user_id'] as num).toInt(),
      llmConfig: UserLlmConfigEntity.fromJson(
          json['llm_config'] as Map<String, dynamic>),
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      modified: json['modified'] == null
          ? null
          : DateTime.parse(json['modified'] as String),
    );

Map<String, dynamic> _$$UserLlmEntityImplToJson(_$UserLlmEntityImpl instance) =>
    <String, dynamic>{
      'user_llm_id': instance.userLlmId,
      'llm_id': instance.llmId,
      'user_llm_name': instance.userLlmName,
      'user_llm_description': instance.userLlmDescription,
      'llm_type': instance.llmType,
      'user_id': instance.userId,
      'llm_config': instance.llmConfig.toJson(),
      'created': instance.created?.toIso8601String(),
      'modified': instance.modified?.toIso8601String(),
    };
