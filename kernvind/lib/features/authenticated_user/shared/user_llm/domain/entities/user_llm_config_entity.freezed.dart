// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_llm_config_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserLlmConfigEntity _$UserLlmConfigEntityFromJson(Map<String, dynamic> json) {
  return _UserLlmConfigEntity.fromJson(json);
}

/// @nodoc
mixin _$UserLlmConfigEntity {
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_key')
  String? get apiKey => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_key_header')
  String? get apiKeyHeader => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_name')
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String? get password => throw _privateConstructorUsedError;

  /// Serializes this UserLlmConfigEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserLlmConfigEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserLlmConfigEntityCopyWith<UserLlmConfigEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLlmConfigEntityCopyWith<$Res> {
  factory $UserLlmConfigEntityCopyWith(
          UserLlmConfigEntity value, $Res Function(UserLlmConfigEntity) then) =
      _$UserLlmConfigEntityCopyWithImpl<$Res, UserLlmConfigEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'api_key') String? apiKey,
      @JsonKey(name: 'api_key_header') String? apiKeyHeader,
      @JsonKey(name: 'user_name') String? userName,
      @JsonKey(name: 'password') String? password});
}

/// @nodoc
class _$UserLlmConfigEntityCopyWithImpl<$Res, $Val extends UserLlmConfigEntity>
    implements $UserLlmConfigEntityCopyWith<$Res> {
  _$UserLlmConfigEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserLlmConfigEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? apiKey = freezed,
    Object? apiKeyHeader = freezed,
    Object? userName = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      apiKey: freezed == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String?,
      apiKeyHeader: freezed == apiKeyHeader
          ? _value.apiKeyHeader
          : apiKeyHeader // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserLlmConfigEntityImplCopyWith<$Res>
    implements $UserLlmConfigEntityCopyWith<$Res> {
  factory _$$UserLlmConfigEntityImplCopyWith(_$UserLlmConfigEntityImpl value,
          $Res Function(_$UserLlmConfigEntityImpl) then) =
      __$$UserLlmConfigEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'api_key') String? apiKey,
      @JsonKey(name: 'api_key_header') String? apiKeyHeader,
      @JsonKey(name: 'user_name') String? userName,
      @JsonKey(name: 'password') String? password});
}

/// @nodoc
class __$$UserLlmConfigEntityImplCopyWithImpl<$Res>
    extends _$UserLlmConfigEntityCopyWithImpl<$Res, _$UserLlmConfigEntityImpl>
    implements _$$UserLlmConfigEntityImplCopyWith<$Res> {
  __$$UserLlmConfigEntityImplCopyWithImpl(_$UserLlmConfigEntityImpl _value,
      $Res Function(_$UserLlmConfigEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserLlmConfigEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? apiKey = freezed,
    Object? apiKeyHeader = freezed,
    Object? userName = freezed,
    Object? password = freezed,
  }) {
    return _then(_$UserLlmConfigEntityImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      apiKey: freezed == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String?,
      apiKeyHeader: freezed == apiKeyHeader
          ? _value.apiKeyHeader
          : apiKeyHeader // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserLlmConfigEntityImpl implements _UserLlmConfigEntity {
  _$UserLlmConfigEntityImpl(
      {@JsonKey(name: 'url') this.url,
      @JsonKey(name: 'api_key') this.apiKey,
      @JsonKey(name: 'api_key_header') this.apiKeyHeader,
      @JsonKey(name: 'user_name') this.userName,
      @JsonKey(name: 'password') this.password});

  factory _$UserLlmConfigEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserLlmConfigEntityImplFromJson(json);

  @override
  @JsonKey(name: 'url')
  final String? url;
  @override
  @JsonKey(name: 'api_key')
  final String? apiKey;
  @override
  @JsonKey(name: 'api_key_header')
  final String? apiKeyHeader;
  @override
  @JsonKey(name: 'user_name')
  final String? userName;
  @override
  @JsonKey(name: 'password')
  final String? password;

  @override
  String toString() {
    return 'UserLlmConfigEntity(url: $url, apiKey: $apiKey, apiKeyHeader: $apiKeyHeader, userName: $userName, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLlmConfigEntityImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.apiKey, apiKey) || other.apiKey == apiKey) &&
            (identical(other.apiKeyHeader, apiKeyHeader) ||
                other.apiKeyHeader == apiKeyHeader) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, url, apiKey, apiKeyHeader, userName, password);

  /// Create a copy of UserLlmConfigEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLlmConfigEntityImplCopyWith<_$UserLlmConfigEntityImpl> get copyWith =>
      __$$UserLlmConfigEntityImplCopyWithImpl<_$UserLlmConfigEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserLlmConfigEntityImplToJson(
      this,
    );
  }
}

abstract class _UserLlmConfigEntity implements UserLlmConfigEntity {
  factory _UserLlmConfigEntity(
          {@JsonKey(name: 'url') final String? url,
          @JsonKey(name: 'api_key') final String? apiKey,
          @JsonKey(name: 'api_key_header') final String? apiKeyHeader,
          @JsonKey(name: 'user_name') final String? userName,
          @JsonKey(name: 'password') final String? password}) =
      _$UserLlmConfigEntityImpl;

  factory _UserLlmConfigEntity.fromJson(Map<String, dynamic> json) =
      _$UserLlmConfigEntityImpl.fromJson;

  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(name: 'api_key')
  String? get apiKey;
  @override
  @JsonKey(name: 'api_key_header')
  String? get apiKeyHeader;
  @override
  @JsonKey(name: 'user_name')
  String? get userName;
  @override
  @JsonKey(name: 'password')
  String? get password;

  /// Create a copy of UserLlmConfigEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserLlmConfigEntityImplCopyWith<_$UserLlmConfigEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
