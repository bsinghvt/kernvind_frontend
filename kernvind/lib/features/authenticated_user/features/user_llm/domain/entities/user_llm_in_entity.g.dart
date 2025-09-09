// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_llm_in_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserLlmInEntityImpl _$$UserLlmInEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$UserLlmInEntityImpl(
      userLlmId: (json['user_llm_id'] as num).toInt(),
      llmId: json['llm_id'] as String,
      userLlmName: json['user_llm_name'] as String,
      userLlmDescription: json['user_llm_description'] as String?,
      llmType: json['llm_type'] as String,
      userId: (json['user_id'] as num).toInt(),
      created: DateTime.parse(json['created'] as String),
      modified: DateTime.parse(json['modified'] as String),
    );

Map<String, dynamic> _$$UserLlmInEntityImplToJson(
        _$UserLlmInEntityImpl instance) =>
    <String, dynamic>{
      'user_llm_id': instance.userLlmId,
      'llm_id': instance.llmId,
      'user_llm_name': instance.userLlmName,
      'user_llm_description': instance.userLlmDescription,
      'llm_type': instance.llmType,
      'user_id': instance.userId,
      'created': instance.created.toIso8601String(),
      'modified': instance.modified.toIso8601String(),
    };
