// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kernvind/features/authenticated_user/features/user_llm/domain/entities/user_llm_bot_entity.dart';
import 'package:kernvind/features/authenticated_user/features/user_llm/domain/entities/user_llm_in_entity.dart';

part 'user_llm_details_entity.freezed.dart';
part 'user_llm_details_entity.g.dart';

@freezed
class UserLlmDetailsEntity with _$UserLlmDetailsEntity {
  @JsonSerializable(explicitToJson: true)
  factory UserLlmDetailsEntity({
    @JsonKey(name: 'user_llm') required UserLlmInEntity userLlm,
    @JsonKey(name: 'user_llm_bots') required List<UserLlmBotEntity> userLlmBots,
  }) = _UserLlmDetailsEntity;

  factory UserLlmDetailsEntity.fromJson(Map<String, dynamic> json) =>
      _$UserLlmDetailsEntityFromJson(json);
}
