// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'google_sign_in_id_token_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GoogleSignInIdTokenEntity _$GoogleSignInIdTokenEntityFromJson(
    Map<String, dynamic> json) {
  return _GoogleSignInIdTokenEntity.fromJson(json);
}

/// @nodoc
mixin _$GoogleSignInIdTokenEntity {
  @JsonKey(name: 'id_token')
  String get idToken => throw _privateConstructorUsedError;
  String get platform => throw _privateConstructorUsedError;

  /// Serializes this GoogleSignInIdTokenEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GoogleSignInIdTokenEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GoogleSignInIdTokenEntityCopyWith<GoogleSignInIdTokenEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoogleSignInIdTokenEntityCopyWith<$Res> {
  factory $GoogleSignInIdTokenEntityCopyWith(GoogleSignInIdTokenEntity value,
          $Res Function(GoogleSignInIdTokenEntity) then) =
      _$GoogleSignInIdTokenEntityCopyWithImpl<$Res, GoogleSignInIdTokenEntity>;
  @useResult
  $Res call({@JsonKey(name: 'id_token') String idToken, String platform});
}

/// @nodoc
class _$GoogleSignInIdTokenEntityCopyWithImpl<$Res,
        $Val extends GoogleSignInIdTokenEntity>
    implements $GoogleSignInIdTokenEntityCopyWith<$Res> {
  _$GoogleSignInIdTokenEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GoogleSignInIdTokenEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idToken = null,
    Object? platform = null,
  }) {
    return _then(_value.copyWith(
      idToken: null == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoogleSignInIdTokenEntityImplCopyWith<$Res>
    implements $GoogleSignInIdTokenEntityCopyWith<$Res> {
  factory _$$GoogleSignInIdTokenEntityImplCopyWith(
          _$GoogleSignInIdTokenEntityImpl value,
          $Res Function(_$GoogleSignInIdTokenEntityImpl) then) =
      __$$GoogleSignInIdTokenEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'id_token') String idToken, String platform});
}

/// @nodoc
class __$$GoogleSignInIdTokenEntityImplCopyWithImpl<$Res>
    extends _$GoogleSignInIdTokenEntityCopyWithImpl<$Res,
        _$GoogleSignInIdTokenEntityImpl>
    implements _$$GoogleSignInIdTokenEntityImplCopyWith<$Res> {
  __$$GoogleSignInIdTokenEntityImplCopyWithImpl(
      _$GoogleSignInIdTokenEntityImpl _value,
      $Res Function(_$GoogleSignInIdTokenEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoogleSignInIdTokenEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idToken = null,
    Object? platform = null,
  }) {
    return _then(_$GoogleSignInIdTokenEntityImpl(
      idToken: null == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoogleSignInIdTokenEntityImpl implements _GoogleSignInIdTokenEntity {
  _$GoogleSignInIdTokenEntityImpl(
      {@JsonKey(name: 'id_token') required this.idToken,
      required this.platform});

  factory _$GoogleSignInIdTokenEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoogleSignInIdTokenEntityImplFromJson(json);

  @override
  @JsonKey(name: 'id_token')
  final String idToken;
  @override
  final String platform;

  @override
  String toString() {
    return 'GoogleSignInIdTokenEntity(idToken: $idToken, platform: $platform)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoogleSignInIdTokenEntityImpl &&
            (identical(other.idToken, idToken) || other.idToken == idToken) &&
            (identical(other.platform, platform) ||
                other.platform == platform));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, idToken, platform);

  /// Create a copy of GoogleSignInIdTokenEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoogleSignInIdTokenEntityImplCopyWith<_$GoogleSignInIdTokenEntityImpl>
      get copyWith => __$$GoogleSignInIdTokenEntityImplCopyWithImpl<
          _$GoogleSignInIdTokenEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoogleSignInIdTokenEntityImplToJson(
      this,
    );
  }
}

abstract class _GoogleSignInIdTokenEntity implements GoogleSignInIdTokenEntity {
  factory _GoogleSignInIdTokenEntity(
      {@JsonKey(name: 'id_token') required final String idToken,
      required final String platform}) = _$GoogleSignInIdTokenEntityImpl;

  factory _GoogleSignInIdTokenEntity.fromJson(Map<String, dynamic> json) =
      _$GoogleSignInIdTokenEntityImpl.fromJson;

  @override
  @JsonKey(name: 'id_token')
  String get idToken;
  @override
  String get platform;

  /// Create a copy of GoogleSignInIdTokenEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoogleSignInIdTokenEntityImplCopyWith<_$GoogleSignInIdTokenEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
