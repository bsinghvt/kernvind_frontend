// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_llm_list_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PublicLlmListEntityImpl _$$PublicLlmListEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$PublicLlmListEntityImpl(
      llmName: json['llm_name'] as String,
      llmmodeltypeName: json['llmmodeltype_name'] as String,
      created: DateTime.parse(json['created'] as String),
      modified: DateTime.parse(json['modified'] as String),
    );

Map<String, dynamic> _$$PublicLlmListEntityImplToJson(
        _$PublicLlmListEntityImpl instance) =>
    <String, dynamic>{
      'llm_name': instance.llmName,
      'llmmodeltype_name': instance.llmmodeltypeName,
      'created': instance.created.toIso8601String(),
      'modified': instance.modified.toIso8601String(),
    };
