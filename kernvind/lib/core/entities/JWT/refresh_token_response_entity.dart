import 'package:freezed_annotation/freezed_annotation.dart';

part 'refresh_token_response_entity.freezed.dart';
part 'refresh_token_response_entity.g.dart';

@freezed
class RefreshTokenResponseEntity with _$RefreshTokenResponseEntity {
  factory RefreshTokenResponseEntity({required String token}) =
      _RefreshTokenResponseEntity;

  factory RefreshTokenResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenResponseEntityFromJson(json);
}
