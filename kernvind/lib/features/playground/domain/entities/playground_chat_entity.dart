// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kernvind/features/playground/domain/entities/playground_llm_config_entity.dart';

part 'playground_chat_entity.freezed.dart';
part 'playground_chat_entity.g.dart';

@freezed
class PlaygroundChatEntity with _$PlaygroundChatEntity {
  @JsonSerializable(explicitToJson: true)
  factory PlaygroundChatEntity({
    @JsonKey(name: 'bot_id') required String botId,
    @JsonKey(name: 'message_text') required String messageText,
    @JsonKey(name: 'message_id') String? messageId,
    @JsonKey(name: 'message_user_name') String? messageUserName,
    @JsonKey(name: 'first_message') bool? firstMessage,
    @JsonKey(name: 'llm_config') PlaygroundLlmConfigEntity? llmConfig,
    DateTime? created,
    DateTime? modified,
  }) = _PlaygroundChatEntity;

  factory PlaygroundChatEntity.fromJson(Map<String, dynamic> json) =>
      _$PlaygroundChatEntityFromJson(json);
}
