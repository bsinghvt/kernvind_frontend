// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_llm_update_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserLlmUpdateEntityImpl _$$UserLlmUpdateEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$UserLlmUpdateEntityImpl(
      userLlmId: (json['user_llm_id'] as num).toInt(),
      llmId: json['llm_id'] as String,
      userLlmName: json['user_llm_name'] as String,
      userLlmDescription: json['user_llm_description'] as String?,
      llmType: json['llm_type'] as String,
      userId: (json['user_id'] as num).toInt(),
      llmConfig: UserLlmConfigEntity.fromJson(
          json['llm_config'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserLlmUpdateEntityImplToJson(
        _$UserLlmUpdateEntityImpl instance) =>
    <String, dynamic>{
      'user_llm_id': instance.userLlmId,
      'llm_id': instance.llmId,
      'user_llm_name': instance.userLlmName,
      'user_llm_description': instance.userLlmDescription,
      'llm_type': instance.llmType,
      'user_id': instance.userId,
      'llm_config': instance.llmConfig.toJson(),
    };
