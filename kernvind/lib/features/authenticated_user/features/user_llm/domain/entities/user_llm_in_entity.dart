// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_llm_in_entity.freezed.dart';
part 'user_llm_in_entity.g.dart';

@freezed
class UserLlmInEntity with _$UserLlmInEntity {
  factory UserLlmInEntity({
    @JsonKey(name: 'user_llm_id') required int userLlmId,
    @JsonKey(name: 'llm_id') required String llmId,
    @JsonKey(name: 'user_llm_name') required String userLlmName,
    @JsonKey(name: 'user_llm_description') String? userLlmDescription,
    @JsonKey(name: 'llm_type') required String llmType,
    @JsonKey(name: 'user_id') required int userId,
    required DateTime created,
    required DateTime modified,
  }) = _UserLlmInEntity;

  factory UserLlmInEntity.fromJson(Map<String, dynamic> json) =>
      _$UserLlmInEntityFromJson(json);
}
