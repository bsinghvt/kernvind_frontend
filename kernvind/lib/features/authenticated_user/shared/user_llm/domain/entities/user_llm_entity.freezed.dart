// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_llm_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserLlmEntity _$UserLlmEntityFromJson(Map<String, dynamic> json) {
  return _UserLlmEntity.fromJson(json);
}

/// @nodoc
mixin _$UserLlmEntity {
  @JsonKey(name: 'user_llm_id')
  int? get userLlmId => throw _privateConstructorUsedError;
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
  DateTime? get created => throw _privateConstructorUsedError;
  DateTime? get modified => throw _privateConstructorUsedError;

  /// Serializes this UserLlmEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserLlmEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserLlmEntityCopyWith<UserLlmEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLlmEntityCopyWith<$Res> {
  factory $UserLlmEntityCopyWith(
          UserLlmEntity value, $Res Function(UserLlmEntity) then) =
      _$UserLlmEntityCopyWithImpl<$Res, UserLlmEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_llm_id') int? userLlmId,
      @JsonKey(name: 'llm_id') String llmId,
      @JsonKey(name: 'user_llm_name') String userLlmName,
      @JsonKey(name: 'user_llm_description') String? userLlmDescription,
      @JsonKey(name: 'llm_type') String llmType,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'llm_config') UserLlmConfigEntity llmConfig,
      DateTime? created,
      DateTime? modified});

  $UserLlmConfigEntityCopyWith<$Res> get llmConfig;
}

/// @nodoc
class _$UserLlmEntityCopyWithImpl<$Res, $Val extends UserLlmEntity>
    implements $UserLlmEntityCopyWith<$Res> {
  _$UserLlmEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserLlmEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userLlmId = freezed,
    Object? llmId = null,
    Object? userLlmName = null,
    Object? userLlmDescription = freezed,
    Object? llmType = null,
    Object? userId = null,
    Object? llmConfig = null,
    Object? created = freezed,
    Object? modified = freezed,
  }) {
    return _then(_value.copyWith(
      userLlmId: freezed == userLlmId
          ? _value.userLlmId
          : userLlmId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      modified: freezed == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of UserLlmEntity
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
abstract class _$$UserLlmEntityImplCopyWith<$Res>
    implements $UserLlmEntityCopyWith<$Res> {
  factory _$$UserLlmEntityImplCopyWith(
          _$UserLlmEntityImpl value, $Res Function(_$UserLlmEntityImpl) then) =
      __$$UserLlmEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_llm_id') int? userLlmId,
      @JsonKey(name: 'llm_id') String llmId,
      @JsonKey(name: 'user_llm_name') String userLlmName,
      @JsonKey(name: 'user_llm_description') String? userLlmDescription,
      @JsonKey(name: 'llm_type') String llmType,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'llm_config') UserLlmConfigEntity llmConfig,
      DateTime? created,
      DateTime? modified});

  @override
  $UserLlmConfigEntityCopyWith<$Res> get llmConfig;
}

/// @nodoc
class __$$UserLlmEntityImplCopyWithImpl<$Res>
    extends _$UserLlmEntityCopyWithImpl<$Res, _$UserLlmEntityImpl>
    implements _$$UserLlmEntityImplCopyWith<$Res> {
  __$$UserLlmEntityImplCopyWithImpl(
      _$UserLlmEntityImpl _value, $Res Function(_$UserLlmEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserLlmEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userLlmId = freezed,
    Object? llmId = null,
    Object? userLlmName = null,
    Object? userLlmDescription = freezed,
    Object? llmType = null,
    Object? userId = null,
    Object? llmConfig = null,
    Object? created = freezed,
    Object? modified = freezed,
  }) {
    return _then(_$UserLlmEntityImpl(
      userLlmId: freezed == userLlmId
          ? _value.userLlmId
          : userLlmId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      modified: freezed == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UserLlmEntityImpl implements _UserLlmEntity {
  _$UserLlmEntityImpl(
      {@JsonKey(name: 'user_llm_id') this.userLlmId,
      @JsonKey(name: 'llm_id') required this.llmId,
      @JsonKey(name: 'user_llm_name') required this.userLlmName,
      @JsonKey(name: 'user_llm_description') this.userLlmDescription,
      @JsonKey(name: 'llm_type') required this.llmType,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'llm_config') required this.llmConfig,
      this.created,
      this.modified});

  factory _$UserLlmEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserLlmEntityImplFromJson(json);

  @override
  @JsonKey(name: 'user_llm_id')
  final int? userLlmId;
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
  final DateTime? created;
  @override
  final DateTime? modified;

  @override
  String toString() {
    return 'UserLlmEntity(userLlmId: $userLlmId, llmId: $llmId, userLlmName: $userLlmName, userLlmDescription: $userLlmDescription, llmType: $llmType, userId: $userId, llmConfig: $llmConfig, created: $created, modified: $modified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLlmEntityImpl &&
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
                other.llmConfig == llmConfig) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.modified, modified) ||
                other.modified == modified));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userLlmId, llmId, userLlmName,
      userLlmDescription, llmType, userId, llmConfig, created, modified);

  /// Create a copy of UserLlmEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLlmEntityImplCopyWith<_$UserLlmEntityImpl> get copyWith =>
      __$$UserLlmEntityImplCopyWithImpl<_$UserLlmEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserLlmEntityImplToJson(
      this,
    );
  }
}

abstract class _UserLlmEntity implements UserLlmEntity {
  factory _UserLlmEntity(
      {@JsonKey(name: 'user_llm_id') final int? userLlmId,
      @JsonKey(name: 'llm_id') required final String llmId,
      @JsonKey(name: 'user_llm_name') required final String userLlmName,
      @JsonKey(name: 'user_llm_description') final String? userLlmDescription,
      @JsonKey(name: 'llm_type') required final String llmType,
      @JsonKey(name: 'user_id') required final int userId,
      @JsonKey(name: 'llm_config') required final UserLlmConfigEntity llmConfig,
      final DateTime? created,
      final DateTime? modified}) = _$UserLlmEntityImpl;

  factory _UserLlmEntity.fromJson(Map<String, dynamic> json) =
      _$UserLlmEntityImpl.fromJson;

  @override
  @JsonKey(name: 'user_llm_id')
  int? get userLlmId;
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
  @override
  DateTime? get created;
  @override
  DateTime? get modified;

  /// Create a copy of UserLlmEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserLlmEntityImplCopyWith<_$UserLlmEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
