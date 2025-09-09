// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'google_sign_in_id_token_entity.freezed.dart';
part 'google_sign_in_id_token_entity.g.dart';

@freezed
class GoogleSignInIdTokenEntity with _$GoogleSignInIdTokenEntity {
  factory GoogleSignInIdTokenEntity({
    @JsonKey(name: 'id_token') required String idToken,
    required String platform,
  }) = _GoogleSignInIdTokenEntity;

  factory GoogleSignInIdTokenEntity.fromJson(Map<String, dynamic> json) =>
      _$GoogleSignInIdTokenEntityFromJson(json);
}
