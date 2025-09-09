// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'bot_update_name_desc_entity.freezed.dart';
part 'bot_update_name_desc_entity.g.dart';

@freezed
class BotUpdateNameDescEntity with _$BotUpdateNameDescEntity {
  factory BotUpdateNameDescEntity({
    @JsonKey(name: 'bot_id') required int botId,
    @JsonKey(name: 'bot_name') required String botName,
    @JsonKey(name: 'bot_description') String? botDescription,
  }) = _BotUpdateNameDescEntity;

  factory BotUpdateNameDescEntity.fromJson(Map<String, dynamic> json) =>
      _$BotUpdateNameDescEntityFromJson(json);
}
