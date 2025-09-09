// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kernvind/features/authenticated_user/features/bot/domain/entities/bot_entity.dart';
import 'package:kernvind/features/authenticated_user/features/bot/domain/entities/bot_users_entity.dart';

part 'bot_details_entity.freezed.dart';
part 'bot_details_entity.g.dart';

@freezed
class BotDetailsEntity with _$BotDetailsEntity {
  @JsonSerializable(explicitToJson: true)
  factory BotDetailsEntity({
    required BotEntity bot,
    required List<BotUsersEntity> users,
  }) = _BotDetailsEntity;

  factory BotDetailsEntity.fromJson(Map<String, dynamic> json) =>
      _$BotDetailsEntityFromJson(json);
}
