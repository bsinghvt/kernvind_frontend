// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_llm_config_entity.freezed.dart';
part 'user_llm_config_entity.g.dart';

@freezed
class UserLlmConfigEntity with _$UserLlmConfigEntity {
  factory UserLlmConfigEntity({
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'api_key') String? apiKey,
    @JsonKey(name: 'api_key_header') String? apiKeyHeader,
    @JsonKey(name: 'user_name') String? userName,
    @JsonKey(name: 'password') String? password,
  }) = _UserLlmConfigEntity;

  factory UserLlmConfigEntity.fromJson(Map<String, dynamic> json) =>
      _$UserLlmConfigEntityFromJson(json);
}
