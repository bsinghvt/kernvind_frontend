// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'playground_llm_config_entity.freezed.dart';
part 'playground_llm_config_entity.g.dart';

@freezed
class PlaygroundLlmConfigEntity with _$PlaygroundLlmConfigEntity {
  factory PlaygroundLlmConfigEntity({
    @JsonKey(name: 'llm_name') String? llmName,
    @JsonKey(name: 'llm_type') String? llmType,
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'api_key') String? apiKey,
    @JsonKey(name: 'api_key_header') String? apiKeyHeader,
    @JsonKey(name: 'user_name') String? userName,
    @JsonKey(name: 'password') String? password,
    @JsonKey(name: 'use_my_llm') required bool useMyLlm,
  }) = _PlaygroundLlmConfigEntity;

  factory PlaygroundLlmConfigEntity.fromJson(Map<String, dynamic> json) =>
      _$PlaygroundLlmConfigEntityFromJson(json);
}
