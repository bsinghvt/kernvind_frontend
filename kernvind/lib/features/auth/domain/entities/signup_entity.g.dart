// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignupEntityImpl _$$SignupEntityImplFromJson(Map<String, dynamic> json) =>
    _$SignupEntityImpl(
      fullName: json['full_name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$SignupEntityImplToJson(_$SignupEntityImpl instance) =>
    <String, dynamic>{
      'full_name': instance.fullName,
      'email': instance.email,
      'password': instance.password,
    };
