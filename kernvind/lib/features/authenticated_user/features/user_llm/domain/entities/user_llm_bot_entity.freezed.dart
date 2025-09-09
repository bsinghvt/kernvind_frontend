// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_llm_bot_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserLlmBotEntity _$UserLlmBotEntityFromJson(Map<String, dynamic> json) {
  return _UserLlmBotEntity.fromJson(json);
}

/// @nodoc
mixin _$UserLlmBotEntity {
  @JsonKey(name: 'bot_id')
  int get botId => throw _privateConstructorUsedError;
  @JsonKey(name: 'bot_name')
  String get botName => throw _privateConstructorUsedError;
  @JsonKey(name: 'bot_description')
  String? get botDescription => throw _privateConstructorUsedError;

  /// Serializes this UserLlmBotEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserLlmBotEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserLlmBotEntityCopyWith<UserLlmBotEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLlmBotEntityCopyWith<$Res> {
  factory $UserLlmBotEntityCopyWith(
          UserLlmBotEntity value, $Res Function(UserLlmBotEntity) then) =
      _$UserLlmBotEntityCopyWithImpl<$Res, UserLlmBotEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'bot_id') int botId,
      @JsonKey(name: 'bot_name') String botName,
      @JsonKey(name: 'bot_description') String? botDescription});
}

/// @nodoc
class _$UserLlmBotEntityCopyWithImpl<$Res, $Val extends UserLlmBotEntity>
    implements $UserLlmBotEntityCopyWith<$Res> {
  _$UserLlmBotEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserLlmBotEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? botId = null,
    Object? botName = null,
    Object? botDescription = freezed,
  }) {
    return _then(_value.copyWith(
      botId: null == botId
          ? _value.botId
          : botId // ignore: cast_nullable_to_non_nullable
              as int,
      botName: null == botName
          ? _value.botName
          : botName // ignore: cast_nullable_to_non_nullable
              as String,
      botDescription: freezed == botDescription
          ? _value.botDescription
          : botDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserLlmBotEntityImplCopyWith<$Res>
    implements $UserLlmBotEntityCopyWith<$Res> {
  factory _$$UserLlmBotEntityImplCopyWith(_$UserLlmBotEntityImpl value,
          $Res Function(_$UserLlmBotEntityImpl) then) =
      __$$UserLlmBotEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'bot_id') int botId,
      @JsonKey(name: 'bot_name') String botName,
      @JsonKey(name: 'bot_description') String? botDescription});
}

/// @nodoc
class __$$UserLlmBotEntityImplCopyWithImpl<$Res>
    extends _$UserLlmBotEntityCopyWithImpl<$Res, _$UserLlmBotEntityImpl>
    implements _$$UserLlmBotEntityImplCopyWith<$Res> {
  __$$UserLlmBotEntityImplCopyWithImpl(_$UserLlmBotEntityImpl _value,
      $Res Function(_$UserLlmBotEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserLlmBotEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? botId = null,
    Object? botName = null,
    Object? botDescription = freezed,
  }) {
    return _then(_$UserLlmBotEntityImpl(
      botId: null == botId
          ? _value.botId
          : botId // ignore: cast_nullable_to_non_nullable
              as int,
      botName: null == botName
          ? _value.botName
          : botName // ignore: cast_nullable_to_non_nullable
              as String,
      botDescription: freezed == botDescription
          ? _value.botDescription
          : botDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserLlmBotEntityImpl implements _UserLlmBotEntity {
  _$UserLlmBotEntityImpl(
      {@JsonKey(name: 'bot_id') required this.botId,
      @JsonKey(name: 'bot_name') required this.botName,
      @JsonKey(name: 'bot_description') this.botDescription});

  factory _$UserLlmBotEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserLlmBotEntityImplFromJson(json);

  @override
  @JsonKey(name: 'bot_id')
  final int botId;
  @override
  @JsonKey(name: 'bot_name')
  final String botName;
  @override
  @JsonKey(name: 'bot_description')
  final String? botDescription;

  @override
  String toString() {
    return 'UserLlmBotEntity(botId: $botId, botName: $botName, botDescription: $botDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLlmBotEntityImpl &&
            (identical(other.botId, botId) || other.botId == botId) &&
            (identical(other.botName, botName) || other.botName == botName) &&
            (identical(other.botDescription, botDescription) ||
                other.botDescription == botDescription));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, botId, botName, botDescription);

  /// Create a copy of UserLlmBotEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLlmBotEntityImplCopyWith<_$UserLlmBotEntityImpl> get copyWith =>
      __$$UserLlmBotEntityImplCopyWithImpl<_$UserLlmBotEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserLlmBotEntityImplToJson(
      this,
    );
  }
}

abstract class _UserLlmBotEntity implements UserLlmBotEntity {
  factory _UserLlmBotEntity(
          {@JsonKey(name: 'bot_id') required final int botId,
          @JsonKey(name: 'bot_name') required final String botName,
          @JsonKey(name: 'bot_description') final String? botDescription}) =
      _$UserLlmBotEntityImpl;

  factory _UserLlmBotEntity.fromJson(Map<String, dynamic> json) =
      _$UserLlmBotEntityImpl.fromJson;

  @override
  @JsonKey(name: 'bot_id')
  int get botId;
  @override
  @JsonKey(name: 'bot_name')
  String get botName;
  @override
  @JsonKey(name: 'bot_description')
  String? get botDescription;

  /// Create a copy of UserLlmBotEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserLlmBotEntityImplCopyWith<_$UserLlmBotEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
