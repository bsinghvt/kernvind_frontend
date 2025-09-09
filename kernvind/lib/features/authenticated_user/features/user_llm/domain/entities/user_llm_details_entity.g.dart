// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_llm_details_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserLlmDetailsEntityImpl _$$UserLlmDetailsEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$UserLlmDetailsEntityImpl(
      userLlm:
          UserLlmInEntity.fromJson(json['user_llm'] as Map<String, dynamic>),
      userLlmBots: (json['user_llm_bots'] as List<dynamic>)
          .map((e) => UserLlmBotEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserLlmDetailsEntityImplToJson(
        _$UserLlmDetailsEntityImpl instance) =>
    <String, dynamic>{
      'user_llm': instance.userLlm.toJson(),
      'user_llm_bots': instance.userLlmBots.map((e) => e.toJson()).toList(),
    };
