// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TokenResponseEntity _$TokenResponseEntityFromJson(Map<String, dynamic> json) {
  return _TokenResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$TokenResponseEntity {
  @JsonKey(name: "refresh_token")
  String get refreshToken => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  /// Serializes this TokenResponseEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TokenResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TokenResponseEntityCopyWith<TokenResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenResponseEntityCopyWith<$Res> {
  factory $TokenResponseEntityCopyWith(
          TokenResponseEntity value, $Res Function(TokenResponseEntity) then) =
      _$TokenResponseEntityCopyWithImpl<$Res, TokenResponseEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: "refresh_token") String refreshToken, String token});
}

/// @nodoc
class _$TokenResponseEntityCopyWithImpl<$Res, $Val extends TokenResponseEntity>
    implements $TokenResponseEntityCopyWith<$Res> {
  _$TokenResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TokenResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokenResponseEntityImplCopyWith<$Res>
    implements $TokenResponseEntityCopyWith<$Res> {
  factory _$$TokenResponseEntityImplCopyWith(_$TokenResponseEntityImpl value,
          $Res Function(_$TokenResponseEntityImpl) then) =
      __$$TokenResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "refresh_token") String refreshToken, String token});
}

/// @nodoc
class __$$TokenResponseEntityImplCopyWithImpl<$Res>
    extends _$TokenResponseEntityCopyWithImpl<$Res, _$TokenResponseEntityImpl>
    implements _$$TokenResponseEntityImplCopyWith<$Res> {
  __$$TokenResponseEntityImplCopyWithImpl(_$TokenResponseEntityImpl _value,
      $Res Function(_$TokenResponseEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
    Object? token = null,
  }) {
    return _then(_$TokenResponseEntityImpl(
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenResponseEntityImpl implements _TokenResponseEntity {
  _$TokenResponseEntityImpl(
      {@JsonKey(name: "refresh_token") required this.refreshToken,
      required this.token});

  factory _$TokenResponseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenResponseEntityImplFromJson(json);

  @override
  @JsonKey(name: "refresh_token")
  final String refreshToken;
  @override
  final String token;

  @override
  String toString() {
    return 'TokenResponseEntity(refreshToken: $refreshToken, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenResponseEntityImpl &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, refreshToken, token);

  /// Create a copy of TokenResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenResponseEntityImplCopyWith<_$TokenResponseEntityImpl> get copyWith =>
      __$$TokenResponseEntityImplCopyWithImpl<_$TokenResponseEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _TokenResponseEntity implements TokenResponseEntity {
  factory _TokenResponseEntity(
      {@JsonKey(name: "refresh_token") required final String refreshToken,
      required final String token}) = _$TokenResponseEntityImpl;

  factory _TokenResponseEntity.fromJson(Map<String, dynamic> json) =
      _$TokenResponseEntityImpl.fromJson;

  @override
  @JsonKey(name: "refresh_token")
  String get refreshToken;
  @override
  String get token;

  /// Create a copy of TokenResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokenResponseEntityImplCopyWith<_$TokenResponseEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
