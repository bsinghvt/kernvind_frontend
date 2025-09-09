// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'bot_users_entity.freezed.dart';
part 'bot_users_entity.g.dart';

@freezed
class BotUsersEntity with _$BotUsersEntity {
  factory BotUsersEntity({
    @JsonKey(name: 'user_id') required int userId,
    bool? userRemoveError,
    @JsonKey(name: 'full_name') required String fullName,
    @JsonKey(name: 'email') required String email,
  }) = _BotUsersEntity;

  factory BotUsersEntity.fromJson(Map<String, dynamic> json) =>
      _$BotUsersEntityFromJson(json);
}
