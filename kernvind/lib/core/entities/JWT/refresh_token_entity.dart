import 'package:freezed_annotation/freezed_annotation.dart';

part 'refresh_token_entity.freezed.dart';
part 'refresh_token_entity.g.dart';

@freezed
class RefreshTokenEntity with _$RefreshTokenEntity {
  factory RefreshTokenEntity({
    required int iat,
    required int nbf,
    required String jti,
    required int identity,
    required int exp,
    required String type,
  }) = _RefreshTokenEntity;

  factory RefreshTokenEntity.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenEntityFromJson(json);
}
