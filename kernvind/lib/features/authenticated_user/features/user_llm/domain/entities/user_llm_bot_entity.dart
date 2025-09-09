// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_llm_bot_entity.freezed.dart';
part 'user_llm_bot_entity.g.dart';

@freezed
class UserLlmBotEntity with _$UserLlmBotEntity {
  factory UserLlmBotEntity({
    @JsonKey(name: 'bot_id') required int botId,
    @JsonKey(name: 'bot_name') required String botName,
    @JsonKey(name: 'bot_description') String? botDescription,
  }) = _UserLlmBotEntity;

  factory UserLlmBotEntity.fromJson(Map<String, dynamic> json) =>
      _$UserLlmBotEntityFromJson(json);
}
