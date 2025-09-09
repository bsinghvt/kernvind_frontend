// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refresh_token_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RefreshTokenEntity _$RefreshTokenEntityFromJson(Map<String, dynamic> json) {
  return _RefreshTokenEntity.fromJson(json);
}

/// @nodoc
mixin _$RefreshTokenEntity {
  int get iat => throw _privateConstructorUsedError;
  int get nbf => throw _privateConstructorUsedError;
  String get jti => throw _privateConstructorUsedError;
  int get identity => throw _privateConstructorUsedError;
  int get exp => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  /// Serializes this RefreshTokenEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RefreshTokenEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefreshTokenEntityCopyWith<RefreshTokenEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefreshTokenEntityCopyWith<$Res> {
  factory $RefreshTokenEntityCopyWith(
          RefreshTokenEntity value, $Res Function(RefreshTokenEntity) then) =
      _$RefreshTokenEntityCopyWithImpl<$Res, RefreshTokenEntity>;
  @useResult
  $Res call({int iat, int nbf, String jti, int identity, int exp, String type});
}

/// @nodoc
class _$RefreshTokenEntityCopyWithImpl<$Res, $Val extends RefreshTokenEntity>
    implements $RefreshTokenEntityCopyWith<$Res> {
  _$RefreshTokenEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefreshTokenEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iat = null,
    Object? nbf = null,
    Object? jti = null,
    Object? identity = null,
    Object? exp = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      iat: null == iat
          ? _value.iat
          : iat // ignore: cast_nullable_to_non_nullable
              as int,
      nbf: null == nbf
          ? _value.nbf
          : nbf // ignore: cast_nullable_to_non_nullable
              as int,
      jti: null == jti
          ? _value.jti
          : jti // ignore: cast_nullable_to_non_nullable
              as String,
      identity: null == identity
          ? _value.identity
          : identity // ignore: cast_nullable_to_non_nullable
              as int,
      exp: null == exp
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RefreshTokenEntityImplCopyWith<$Res>
    implements $RefreshTokenEntityCopyWith<$Res> {
  factory _$$RefreshTokenEntityImplCopyWith(_$RefreshTokenEntityImpl value,
          $Res Function(_$RefreshTokenEntityImpl) then) =
      __$$RefreshTokenEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int iat, int nbf, String jti, int identity, int exp, String type});
}

/// @nodoc
class __$$RefreshTokenEntityImplCopyWithImpl<$Res>
    extends _$RefreshTokenEntityCopyWithImpl<$Res, _$RefreshTokenEntityImpl>
    implements _$$RefreshTokenEntityImplCopyWith<$Res> {
  __$$RefreshTokenEntityImplCopyWithImpl(_$RefreshTokenEntityImpl _value,
      $Res Function(_$RefreshTokenEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefreshTokenEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iat = null,
    Object? nbf = null,
    Object? jti = null,
    Object? identity = null,
    Object? exp = null,
    Object? type = null,
  }) {
    return _then(_$RefreshTokenEntityImpl(
      iat: null == iat
          ? _value.iat
          : iat // ignore: cast_nullable_to_non_nullable
              as int,
      nbf: null == nbf
          ? _value.nbf
          : nbf // ignore: cast_nullable_to_non_nullable
              as int,
      jti: null == jti
          ? _value.jti
          : jti // ignore: cast_nullable_to_non_nullable
              as String,
      identity: null == identity
          ? _value.identity
          : identity // ignore: cast_nullable_to_non_nullable
              as int,
      exp: null == exp
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RefreshTokenEntityImpl implements _RefreshTokenEntity {
  _$RefreshTokenEntityImpl(
      {required this.iat,
      required this.nbf,
      required this.jti,
      required this.identity,
      required this.exp,
      required this.type});

  factory _$RefreshTokenEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefreshTokenEntityImplFromJson(json);

  @override
  final int iat;
  @override
  final int nbf;
  @override
  final String jti;
  @override
  final int identity;
  @override
  final int exp;
  @override
  final String type;

  @override
  String toString() {
    return 'RefreshTokenEntity(iat: $iat, nbf: $nbf, jti: $jti, identity: $identity, exp: $exp, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshTokenEntityImpl &&
            (identical(other.iat, iat) || other.iat == iat) &&
            (identical(other.nbf, nbf) || other.nbf == nbf) &&
            (identical(other.jti, jti) || other.jti == jti) &&
            (identical(other.identity, identity) ||
                other.identity == identity) &&
            (identical(other.exp, exp) || other.exp == exp) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, iat, nbf, jti, identity, exp, type);

  /// Create a copy of RefreshTokenEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshTokenEntityImplCopyWith<_$RefreshTokenEntityImpl> get copyWith =>
      __$$RefreshTokenEntityImplCopyWithImpl<_$RefreshTokenEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefreshTokenEntityImplToJson(
      this,
    );
  }
}

abstract class _RefreshTokenEntity implements RefreshTokenEntity {
  factory _RefreshTokenEntity(
      {required final int iat,
      required final int nbf,
      required final String jti,
      required final int identity,
      required final int exp,
      required final String type}) = _$RefreshTokenEntityImpl;

  factory _RefreshTokenEntity.fromJson(Map<String, dynamic> json) =
      _$RefreshTokenEntityImpl.fromJson;

  @override
  int get iat;
  @override
  int get nbf;
  @override
  String get jti;
  @override
  int get identity;
  @override
  int get exp;
  @override
  String get type;

  /// Create a copy of RefreshTokenEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefreshTokenEntityImplCopyWith<_$RefreshTokenEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
