// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'bot_add_user_entity.freezed.dart';
part 'bot_add_user_entity.g.dart';

@freezed
class BotAddUserEntity with _$BotAddUserEntity {
  factory BotAddUserEntity({
    @JsonKey(name: 'bot_id') required int botId,
    @JsonKey(name: 'user_to_add_email') required String userToAddEmail,
    @JsonKey(name: 'can_add_users') required bool canAddUsers,
    @JsonKey(name: 'can_change_datasource') required bool canChangeDatasource,
    @JsonKey(name: 'can_see_datasource') required bool canSeeDatasource,
    @JsonKey(name: 'can_see_datasourcefeed') required bool canSeeDatasourcefeed,
    @JsonKey(name: 'can_change_datasourcefeed')
    required bool canChangeDatasourcefeed,
    @JsonKey(name: 'can_see_llm') required bool canSeeLlm,
    @JsonKey(name: 'can_change_llm') required bool canChangeLlm,
  }) = _BotAddUserEntity;

  factory BotAddUserEntity.fromJson(Map<String, dynamic> json) =>
      _$BotAddUserEntityFromJson(json);
}
