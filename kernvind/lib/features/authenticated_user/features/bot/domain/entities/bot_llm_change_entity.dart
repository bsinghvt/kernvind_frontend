// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'bot_llm_change_entity.freezed.dart';
part 'bot_llm_change_entity.g.dart';

@freezed
class BotLlmChangeEntity with _$BotLlmChangeEntity {
  factory BotLlmChangeEntity({
    @JsonKey(name: 'bot_id') required int botId,
    @JsonKey(name: 'user_llm_id') required int userLlmId,
  }) = _BotLlmChangeEntity;

  factory BotLlmChangeEntity.fromJson(Map<String, dynamic> json) =>
      _$BotLlmChangeEntityFromJson(json);
}
