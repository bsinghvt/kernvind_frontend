// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'access_token_decode_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AccessTokenDecodeEntity _$AccessTokenDecodeEntityFromJson(
    Map<String, dynamic> json) {
  return _AccessTokenDecodeEntity.fromJson(json);
}

/// @nodoc
mixin _$AccessTokenDecodeEntity {
  int get iat => throw _privateConstructorUsedError;
  int get nbf => throw _privateConstructorUsedError;
  String get jti => throw _privateConstructorUsedError;
  int get exp => throw _privateConstructorUsedError;
  int get identity => throw _privateConstructorUsedError;
  bool get fresh => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_claims')
  UserClaimsEntity get userClaims => throw _privateConstructorUsedError;

  /// Serializes this AccessTokenDecodeEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccessTokenDecodeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccessTokenDecodeEntityCopyWith<AccessTokenDecodeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessTokenDecodeEntityCopyWith<$Res> {
  factory $AccessTokenDecodeEntityCopyWith(AccessTokenDecodeEntity value,
          $Res Function(AccessTokenDecodeEntity) then) =
      _$AccessTokenDecodeEntityCopyWithImpl<$Res, AccessTokenDecodeEntity>;
  @useResult
  $Res call(
      {int iat,
      int nbf,
      String jti,
      int exp,
      int identity,
      bool fresh,
      String type,
      @JsonKey(name: 'user_claims') UserClaimsEntity userClaims});

  $UserClaimsEntityCopyWith<$Res> get userClaims;
}

/// @nodoc
class _$AccessTokenDecodeEntityCopyWithImpl<$Res,
        $Val extends AccessTokenDecodeEntity>
    implements $AccessTokenDecodeEntityCopyWith<$Res> {
  _$AccessTokenDecodeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccessTokenDecodeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iat = null,
    Object? nbf = null,
    Object? jti = null,
    Object? exp = null,
    Object? identity = null,
    Object? fresh = null,
    Object? type = null,
    Object? userClaims = null,
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
      exp: null == exp
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as int,
      identity: null == identity
          ? _value.identity
          : identity // ignore: cast_nullable_to_non_nullable
              as int,
      fresh: null == fresh
          ? _value.fresh
          : fresh // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      userClaims: null == userClaims
          ? _value.userClaims
          : userClaims // ignore: cast_nullable_to_non_nullable
              as UserClaimsEntity,
    ) as $Val);
  }

  /// Create a copy of AccessTokenDecodeEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserClaimsEntityCopyWith<$Res> get userClaims {
    return $UserClaimsEntityCopyWith<$Res>(_value.userClaims, (value) {
      return _then(_value.copyWith(userClaims: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccessTokenDecodeEntityImplCopyWith<$Res>
    implements $AccessTokenDecodeEntityCopyWith<$Res> {
  factory _$$AccessTokenDecodeEntityImplCopyWith(
          _$AccessTokenDecodeEntityImpl value,
          $Res Function(_$AccessTokenDecodeEntityImpl) then) =
      __$$AccessTokenDecodeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int iat,
      int nbf,
      String jti,
      int exp,
      int identity,
      bool fresh,
      String type,
      @JsonKey(name: 'user_claims') UserClaimsEntity userClaims});

  @override
  $UserClaimsEntityCopyWith<$Res> get userClaims;
}

/// @nodoc
class __$$AccessTokenDecodeEntityImplCopyWithImpl<$Res>
    extends _$AccessTokenDecodeEntityCopyWithImpl<$Res,
        _$AccessTokenDecodeEntityImpl>
    implements _$$AccessTokenDecodeEntityImplCopyWith<$Res> {
  __$$AccessTokenDecodeEntityImplCopyWithImpl(
      _$AccessTokenDecodeEntityImpl _value,
      $Res Function(_$AccessTokenDecodeEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccessTokenDecodeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iat = null,
    Object? nbf = null,
    Object? jti = null,
    Object? exp = null,
    Object? identity = null,
    Object? fresh = null,
    Object? type = null,
    Object? userClaims = null,
  }) {
    return _then(_$AccessTokenDecodeEntityImpl(
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
      exp: null == exp
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as int,
      identity: null == identity
          ? _value.identity
          : identity // ignore: cast_nullable_to_non_nullable
              as int,
      fresh: null == fresh
          ? _value.fresh
          : fresh // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      userClaims: null == userClaims
          ? _value.userClaims
          : userClaims // ignore: cast_nullable_to_non_nullable
              as UserClaimsEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccessTokenDecodeEntityImpl implements _AccessTokenDecodeEntity {
  _$AccessTokenDecodeEntityImpl(
      {required this.iat,
      required this.nbf,
      required this.jti,
      required this.exp,
      required this.identity,
      required this.fresh,
      required this.type,
      @JsonKey(name: 'user_claims') required this.userClaims});

  factory _$AccessTokenDecodeEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccessTokenDecodeEntityImplFromJson(json);

  @override
  final int iat;
  @override
  final int nbf;
  @override
  final String jti;
  @override
  final int exp;
  @override
  final int identity;
  @override
  final bool fresh;
  @override
  final String type;
  @override
  @JsonKey(name: 'user_claims')
  final UserClaimsEntity userClaims;

  @override
  String toString() {
    return 'AccessTokenDecodeEntity(iat: $iat, nbf: $nbf, jti: $jti, exp: $exp, identity: $identity, fresh: $fresh, type: $type, userClaims: $userClaims)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccessTokenDecodeEntityImpl &&
            (identical(other.iat, iat) || other.iat == iat) &&
            (identical(other.nbf, nbf) || other.nbf == nbf) &&
            (identical(other.jti, jti) || other.jti == jti) &&
            (identical(other.exp, exp) || other.exp == exp) &&
            (identical(other.identity, identity) ||
                other.identity == identity) &&
            (identical(other.fresh, fresh) || other.fresh == fresh) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.userClaims, userClaims) ||
                other.userClaims == userClaims));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, iat, nbf, jti, exp, identity, fresh, type, userClaims);

  /// Create a copy of AccessTokenDecodeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccessTokenDecodeEntityImplCopyWith<_$AccessTokenDecodeEntityImpl>
      get copyWith => __$$AccessTokenDecodeEntityImplCopyWithImpl<
          _$AccessTokenDecodeEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccessTokenDecodeEntityImplToJson(
      this,
    );
  }
}

abstract class _AccessTokenDecodeEntity implements AccessTokenDecodeEntity {
  factory _AccessTokenDecodeEntity(
          {required final int iat,
          required final int nbf,
          required final String jti,
          required final int exp,
          required final int identity,
          required final bool fresh,
          required final String type,
          @JsonKey(name: 'user_claims')
          required final UserClaimsEntity userClaims}) =
      _$AccessTokenDecodeEntityImpl;

  factory _AccessTokenDecodeEntity.fromJson(Map<String, dynamic> json) =
      _$AccessTokenDecodeEntityImpl.fromJson;

  @override
  int get iat;
  @override
  int get nbf;
  @override
  String get jti;
  @override
  int get exp;
  @override
  int get identity;
  @override
  bool get fresh;
  @override
  String get type;
  @override
  @JsonKey(name: 'user_claims')
  UserClaimsEntity get userClaims;

  /// Create a copy of AccessTokenDecodeEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccessTokenDecodeEntityImplCopyWith<_$AccessTokenDecodeEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
