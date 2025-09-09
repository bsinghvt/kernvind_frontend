// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_entity.freezed.dart';
part 'signup_entity.g.dart';

@freezed
class SignupEntity with _$SignupEntity {
  factory SignupEntity({
    @JsonKey(name: 'full_name') required String fullName,
    required String email,
    required String password,
  }) = _SignupEntity;

  factory SignupEntity.fromJson(Map<String, dynamic> json) =>
      _$SignupEntityFromJson(json);
}
