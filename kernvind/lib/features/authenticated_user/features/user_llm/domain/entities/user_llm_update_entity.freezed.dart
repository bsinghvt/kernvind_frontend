// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_llm_update_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserLlmUpdateEntity _$UserLlmUpdateEntityFromJson(Map<String, dynamic> json) {
  return _UserLlmUpdateEntity.fromJson(json);
}

/// @nodoc
mixin _$UserLlmUpdateEntity {
  @JsonKey(name: 'user_llm_id')
  int get userLlmId => throw _privateConstructorUsedError;
  @JsonKey(name: 'llm_id')
  String get llmId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_llm_name')
  String get userLlmName => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_llm_description')
  String? get userLlmDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'llm_type')
  String get llmType => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'llm_config')
  UserLlmConfigEntity get llmConfig => throw _privateConstructorUsedError;

  /// Serializes this UserLlmUpdateEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserLlmUpdateEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserLlmUpdateEntityCopyWith<UserLlmUpdateEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLlmUpdateEntityCopyWith<$Res> {
  factory $UserLlmUpdateEntityCopyWith(
          UserLlmUpdateEntity value, $Res Function(UserLlmUpdateEntity) then) =
      _$UserLlmUpdateEntityCopyWithImpl<$Res, UserLlmUpdateEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_llm_id') int userLlmId,
      @JsonKey(name: 'llm_id') String llmId,
      @JsonKey(name: 'user_llm_name') String userLlmName,
      @JsonKey(name: 'user_llm_description') String? userLlmDescription,
      @JsonKey(name: 'llm_type') String llmType,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'llm_config') UserLlmConfigEntity llmConfig});

  $UserLlmConfigEntityCopyWith<$Res> get llmConfig;
}

/// @nodoc
class _$UserLlmUpdateEntityCopyWithImpl<$Res, $Val extends UserLlmUpdateEntity>
    implements $UserLlmUpdateEntityCopyWith<$Res> {
  _$UserLlmUpdateEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserLlmUpdateEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userLlmId = null,
    Object? llmId = null,
    Object? userLlmName = null,
    Object? userLlmDescription = freezed,
    Object? llmType = null,
    Object? userId = null,
    Object? llmConfig = null,
  }) {
    return _then(_value.copyWith(
      userLlmId: null == userLlmId
          ? _value.userLlmId
          : userLlmId // ignore: cast_nullable_to_non_nullable
              as int,
      llmId: null == llmId
          ? _value.llmId
          : llmId // ignore: cast_nullable_to_non_nullable
              as String,
      userLlmName: null == userLlmName
          ? _value.userLlmName
          : userLlmName // ignore: cast_nullable_to_non_nullable
              as String,
      userLlmDescription: freezed == userLlmDescription
          ? _value.userLlmDescription
          : userLlmDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      llmType: null == llmType
          ? _value.llmType
          : llmType // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      llmConfig: null == llmConfig
          ? _value.llmConfig
          : llmConfig // ignore: cast_nullable_to_non_nullable
              as UserLlmConfigEntity,
    ) as $Val);
  }

  /// Create a copy of UserLlmUpdateEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserLlmConfigEntityCopyWith<$Res> get llmConfig {
    return $UserLlmConfigEntityCopyWith<$Res>(_value.llmConfig, (value) {
      return _then(_value.copyWith(llmConfig: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserLlmUpdateEntityImplCopyWith<$Res>
    implements $UserLlmUpdateEntityCopyWith<$Res> {
  factory _$$UserLlmUpdateEntityImplCopyWith(_$UserLlmUpdateEntityImpl value,
          $Res Function(_$UserLlmUpdateEntityImpl) then) =
      __$$UserLlmUpdateEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_llm_id') int userLlmId,
      @JsonKey(name: 'llm_id') String llmId,
      @JsonKey(name: 'user_llm_name') String userLlmName,
      @JsonKey(name: 'user_llm_description') String? userLlmDescription,
      @JsonKey(name: 'llm_type') String llmType,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'llm_config') UserLlmConfigEntity llmConfig});

  @override
  $UserLlmConfigEntityCopyWith<$Res> get llmConfig;
}

/// @nodoc
class __$$UserLlmUpdateEntityImplCopyWithImpl<$Res>
    extends _$UserLlmUpdateEntityCopyWithImpl<$Res, _$UserLlmUpdateEntityImpl>
    implements _$$UserLlmUpdateEntityImplCopyWith<$Res> {
  __$$UserLlmUpdateEntityImplCopyWithImpl(_$UserLlmUpdateEntityImpl _value,
      $Res Function(_$UserLlmUpdateEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserLlmUpdateEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userLlmId = null,
    Object? llmId = null,
    Object? userLlmName = null,
    Object? userLlmDescription = freezed,
    Object? llmType = null,
    Object? userId = null,
    Object? llmConfig = null,
  }) {
    return _then(_$UserLlmUpdateEntityImpl(
      userLlmId: null == userLlmId
          ? _value.userLlmId
          : userLlmId // ignore: cast_nullable_to_non_nullable
              as int,
      llmId: null == llmId
          ? _value.llmId
          : llmId // ignore: cast_nullable_to_non_nullable
              as String,
      userLlmName: null == userLlmName
          ? _value.userLlmName
          : userLlmName // ignore: cast_nullable_to_non_nullable
              as String,
      userLlmDescription: freezed == userLlmDescription
          ? _value.userLlmDescription
          : userLlmDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      llmType: null == llmType
          ? _value.llmType
          : llmType // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      llmConfig: null == llmConfig
          ? _value.llmConfig
          : llmConfig // ignore: cast_nullable_to_non_nullable
              as UserLlmConfigEntity,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UserLlmUpdateEntityImpl implements _UserLlmUpdateEntity {
  _$UserLlmUpdateEntityImpl(
      {@JsonKey(name: 'user_llm_id') required this.userLlmId,
      @JsonKey(name: 'llm_id') required this.llmId,
      @JsonKey(name: 'user_llm_name') required this.userLlmName,
      @JsonKey(name: 'user_llm_description') this.userLlmDescription,
      @JsonKey(name: 'llm_type') required this.llmType,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'llm_config') required this.llmConfig});

  factory _$UserLlmUpdateEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserLlmUpdateEntityImplFromJson(json);

  @override
  @JsonKey(name: 'user_llm_id')
  final int userLlmId;
  @override
  @JsonKey(name: 'llm_id')
  final String llmId;
  @override
  @JsonKey(name: 'user_llm_name')
  final String userLlmName;
  @override
  @JsonKey(name: 'user_llm_description')
  final String? userLlmDescription;
  @override
  @JsonKey(name: 'llm_type')
  final String llmType;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'llm_config')
  final UserLlmConfigEntity llmConfig;

  @override
  String toString() {
    return 'UserLlmUpdateEntity(userLlmId: $userLlmId, llmId: $llmId, userLlmName: $userLlmName, userLlmDescription: $userLlmDescription, llmType: $llmType, userId: $userId, llmConfig: $llmConfig)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLlmUpdateEntityImpl &&
            (identical(other.userLlmId, userLlmId) ||
                other.userLlmId == userLlmId) &&
            (identical(other.llmId, llmId) || other.llmId == llmId) &&
            (identical(other.userLlmName, userLlmName) ||
                other.userLlmName == userLlmName) &&
            (identical(other.userLlmDescription, userLlmDescription) ||
                other.userLlmDescription == userLlmDescription) &&
            (identical(other.llmType, llmType) || other.llmType == llmType) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.llmConfig, llmConfig) ||
                other.llmConfig == llmConfig));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userLlmId, llmId, userLlmName,
      userLlmDescription, llmType, userId, llmConfig);

  /// Create a copy of UserLlmUpdateEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLlmUpdateEntityImplCopyWith<_$UserLlmUpdateEntityImpl> get copyWith =>
      __$$UserLlmUpdateEntityImplCopyWithImpl<_$UserLlmUpdateEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserLlmUpdateEntityImplToJson(
      this,
    );
  }
}

abstract class _UserLlmUpdateEntity implements UserLlmUpdateEntity {
  factory _UserLlmUpdateEntity(
      {@JsonKey(name: 'user_llm_id') required final int userLlmId,
      @JsonKey(name: 'llm_id') required final String llmId,
      @JsonKey(name: 'user_llm_name') required final String userLlmName,
      @JsonKey(name: 'user_llm_description') final String? userLlmDescription,
      @JsonKey(name: 'llm_type') required final String llmType,
      @JsonKey(name: 'user_id') required final int userId,
      @JsonKey(name: 'llm_config')
      required final UserLlmConfigEntity
          llmConfig}) = _$UserLlmUpdateEntityImpl;

  factory _UserLlmUpdateEntity.fromJson(Map<String, dynamic> json) =
      _$UserLlmUpdateEntityImpl.fromJson;

  @override
  @JsonKey(name: 'user_llm_id')
  int get userLlmId;
  @override
  @JsonKey(name: 'llm_id')
  String get llmId;
  @override
  @JsonKey(name: 'user_llm_name')
  String get userLlmName;
  @override
  @JsonKey(name: 'user_llm_description')
  String? get userLlmDescription;
  @override
  @JsonKey(name: 'llm_type')
  String get llmType;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(name: 'llm_config')
  UserLlmConfigEntity get llmConfig;

  /// Create a copy of UserLlmUpdateEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserLlmUpdateEntityImplCopyWith<_$UserLlmUpdateEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
