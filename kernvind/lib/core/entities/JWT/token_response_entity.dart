// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_response_entity.freezed.dart';
part 'token_response_entity.g.dart';

@freezed
class TokenResponseEntity with _$TokenResponseEntity {
  factory TokenResponseEntity(
      {@JsonKey(name: "refresh_token") required String refreshToken,
      required String token}) = _TokenResponseEntity;

  factory TokenResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$TokenResponseEntityFromJson(json);
}
