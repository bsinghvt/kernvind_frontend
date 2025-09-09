// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kernvind/core/entities/JWT/user_claims_entity.dart';

part 'access_token_decode_entity.freezed.dart';
part 'access_token_decode_entity.g.dart';

@freezed
class AccessTokenDecodeEntity with _$AccessTokenDecodeEntity {
  factory AccessTokenDecodeEntity({
    required int iat,
    required int nbf,
    required String jti,
    required int exp,
    required int identity,
    required bool fresh,
    required String type,
    @JsonKey(name: 'user_claims') required UserClaimsEntity userClaims,
  }) = _AccessTokenDecodeEntity;

  factory AccessTokenDecodeEntity.fromJson(Map<String, dynamic> json) =>
      _$AccessTokenDecodeEntityFromJson(json);
}
