// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_claims_entity.freezed.dart';
part 'user_claims_entity.g.dart';

@freezed
class UserClaimsEntity with _$UserClaimsEntity {
  factory UserClaimsEntity(
          {@JsonKey(name: 'full_name') required String fullName}) =
      _UserClaimsEntity;

  factory UserClaimsEntity.fromJson(Map<String, dynamic> json) =>
      _$UserClaimsEntityFromJson(json);
}
