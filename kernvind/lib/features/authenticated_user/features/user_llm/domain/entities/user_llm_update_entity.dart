// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kernvind/features/authenticated_user/shared/user_llm/domain/entities/user_llm_config_entity.dart';

part 'user_llm_update_entity.freezed.dart';
part 'user_llm_update_entity.g.dart';

@freezed
class UserLlmUpdateEntity with _$UserLlmUpdateEntity {
  @JsonSerializable(explicitToJson: true)
  factory UserLlmUpdateEntity({
    @JsonKey(name: 'user_llm_id') required int userLlmId,
    @JsonKey(name: 'llm_id') required String llmId,
    @JsonKey(name: 'user_llm_name') required String userLlmName,
    @JsonKey(name: 'user_llm_description') String? userLlmDescription,
    @JsonKey(name: 'llm_type') required String llmType,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'llm_config') required UserLlmConfigEntity llmConfig,
  }) = _UserLlmUpdateEntity;

  factory UserLlmUpdateEntity.fromJson(Map<String, dynamic> json) =>
      _$UserLlmUpdateEntityFromJson(json);
}
