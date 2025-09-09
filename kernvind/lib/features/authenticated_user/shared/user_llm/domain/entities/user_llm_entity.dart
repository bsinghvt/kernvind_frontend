// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kernvind/features/authenticated_user/shared/user_llm/domain/entities/user_llm_config_entity.dart';

part 'user_llm_entity.freezed.dart';
part 'user_llm_entity.g.dart';

List<UserLlmEntity> listOfUserLlms(List<dynamic> listData) =>
    List<UserLlmEntity>.from(listData.map((x) => UserLlmEntity.fromJson(x)));

@freezed
class UserLlmEntity with _$UserLlmEntity {
  @JsonSerializable(explicitToJson: true)
  factory UserLlmEntity({
    @JsonKey(name: 'user_llm_id') int? userLlmId,
    @JsonKey(name: 'llm_id') required String llmId,
    @JsonKey(name: 'user_llm_name') required String userLlmName,
    @JsonKey(name: 'user_llm_description') String? userLlmDescription,
    @JsonKey(name: 'llm_type') required String llmType,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'llm_config') required UserLlmConfigEntity llmConfig,
    DateTime? created,
    DateTime? modified,
  }) = _UserLlmEntity;

  factory UserLlmEntity.fromJson(Map<String, dynamic> json) =>
      _$UserLlmEntityFromJson(json);
}
