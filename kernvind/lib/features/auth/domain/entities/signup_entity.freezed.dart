// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignupEntity _$SignupEntityFromJson(Map<String, dynamic> json) {
  return _SignupEntity.fromJson(json);
}

/// @nodoc
mixin _$SignupEntity {
  @JsonKey(name: 'full_name')
  String get fullName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Serializes this SignupEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignupEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignupEntityCopyWith<SignupEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupEntityCopyWith<$Res> {
  factory $SignupEntityCopyWith(
          SignupEntity value, $Res Function(SignupEntity) then) =
      _$SignupEntityCopyWithImpl<$Res, SignupEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'full_name') String fullName,
      String email,
      String password});
}

/// @nodoc
class _$SignupEntityCopyWithImpl<$Res, $Val extends SignupEntity>
    implements $SignupEntityCopyWith<$Res> {
  _$SignupEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignupEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignupEntityImplCopyWith<$Res>
    implements $SignupEntityCopyWith<$Res> {
  factory _$$SignupEntityImplCopyWith(
          _$SignupEntityImpl value, $Res Function(_$SignupEntityImpl) then) =
      __$$SignupEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'full_name') String fullName,
      String email,
      String password});
}

/// @nodoc
class __$$SignupEntityImplCopyWithImpl<$Res>
    extends _$SignupEntityCopyWithImpl<$Res, _$SignupEntityImpl>
    implements _$$SignupEntityImplCopyWith<$Res> {
  __$$SignupEntityImplCopyWithImpl(
      _$SignupEntityImpl _value, $Res Function(_$SignupEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignupEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignupEntityImpl(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignupEntityImpl implements _SignupEntity {
  _$SignupEntityImpl(
      {@JsonKey(name: 'full_name') required this.fullName,
      required this.email,
      required this.password});

  factory _$SignupEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignupEntityImplFromJson(json);

  @override
  @JsonKey(name: 'full_name')
  final String fullName;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SignupEntity(fullName: $fullName, email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupEntityImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fullName, email, password);

  /// Create a copy of SignupEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupEntityImplCopyWith<_$SignupEntityImpl> get copyWith =>
      __$$SignupEntityImplCopyWithImpl<_$SignupEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignupEntityImplToJson(
      this,
    );
  }
}

abstract class _SignupEntity implements SignupEntity {
  factory _SignupEntity(
      {@JsonKey(name: 'full_name') required final String fullName,
      required final String email,
      required final String password}) = _$SignupEntityImpl;

  factory _SignupEntity.fromJson(Map<String, dynamic> json) =
      _$SignupEntityImpl.fromJson;

  @override
  @JsonKey(name: 'full_name')
  String get fullName;
  @override
  String get email;
  @override
  String get password;

  /// Create a copy of SignupEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignupEntityImplCopyWith<_$SignupEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
