// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bot_llm_change_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BotLlmChangeEntity _$BotLlmChangeEntityFromJson(Map<String, dynamic> json) {
  return _BotLlmChangeEntity.fromJson(json);
}

/// @nodoc
mixin _$BotLlmChangeEntity {
  @JsonKey(name: 'bot_id')
  int get botId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_llm_id')
  int get userLlmId => throw _privateConstructorUsedError;

  /// Serializes this BotLlmChangeEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BotLlmChangeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BotLlmChangeEntityCopyWith<BotLlmChangeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BotLlmChangeEntityCopyWith<$Res> {
  factory $BotLlmChangeEntityCopyWith(
          BotLlmChangeEntity value, $Res Function(BotLlmChangeEntity) then) =
      _$BotLlmChangeEntityCopyWithImpl<$Res, BotLlmChangeEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'bot_id') int botId,
      @JsonKey(name: 'user_llm_id') int userLlmId});
}

/// @nodoc
class _$BotLlmChangeEntityCopyWithImpl<$Res, $Val extends BotLlmChangeEntity>
    implements $BotLlmChangeEntityCopyWith<$Res> {
  _$BotLlmChangeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BotLlmChangeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? botId = null,
    Object? userLlmId = null,
  }) {
    return _then(_value.copyWith(
      botId: null == botId
          ? _value.botId
          : botId // ignore: cast_nullable_to_non_nullable
              as int,
      userLlmId: null == userLlmId
          ? _value.userLlmId
          : userLlmId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BotLlmChangeEntityImplCopyWith<$Res>
    implements $BotLlmChangeEntityCopyWith<$Res> {
  factory _$$BotLlmChangeEntityImplCopyWith(_$BotLlmChangeEntityImpl value,
          $Res Function(_$BotLlmChangeEntityImpl) then) =
      __$$BotLlmChangeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'bot_id') int botId,
      @JsonKey(name: 'user_llm_id') int userLlmId});
}

/// @nodoc
class __$$BotLlmChangeEntityImplCopyWithImpl<$Res>
    extends _$BotLlmChangeEntityCopyWithImpl<$Res, _$BotLlmChangeEntityImpl>
    implements _$$BotLlmChangeEntityImplCopyWith<$Res> {
  __$$BotLlmChangeEntityImplCopyWithImpl(_$BotLlmChangeEntityImpl _value,
      $Res Function(_$BotLlmChangeEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of BotLlmChangeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? botId = null,
    Object? userLlmId = null,
  }) {
    return _then(_$BotLlmChangeEntityImpl(
      botId: null == botId
          ? _value.botId
          : botId // ignore: cast_nullable_to_non_nullable
              as int,
      userLlmId: null == userLlmId
          ? _value.userLlmId
          : userLlmId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BotLlmChangeEntityImpl implements _BotLlmChangeEntity {
  _$BotLlmChangeEntityImpl(
      {@JsonKey(name: 'bot_id') required this.botId,
      @JsonKey(name: 'user_llm_id') required this.userLlmId});

  factory _$BotLlmChangeEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$BotLlmChangeEntityImplFromJson(json);

  @override
  @JsonKey(name: 'bot_id')
  final int botId;
  @override
  @JsonKey(name: 'user_llm_id')
  final int userLlmId;

  @override
  String toString() {
    return 'BotLlmChangeEntity(botId: $botId, userLlmId: $userLlmId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BotLlmChangeEntityImpl &&
            (identical(other.botId, botId) || other.botId == botId) &&
            (identical(other.userLlmId, userLlmId) ||
                other.userLlmId == userLlmId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, botId, userLlmId);

  /// Create a copy of BotLlmChangeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BotLlmChangeEntityImplCopyWith<_$BotLlmChangeEntityImpl> get copyWith =>
      __$$BotLlmChangeEntityImplCopyWithImpl<_$BotLlmChangeEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BotLlmChangeEntityImplToJson(
      this,
    );
  }
}

abstract class _BotLlmChangeEntity implements BotLlmChangeEntity {
  factory _BotLlmChangeEntity(
          {@JsonKey(name: 'bot_id') required final int botId,
          @JsonKey(name: 'user_llm_id') required final int userLlmId}) =
      _$BotLlmChangeEntityImpl;

  factory _BotLlmChangeEntity.fromJson(Map<String, dynamic> json) =
      _$BotLlmChangeEntityImpl.fromJson;

  @override
  @JsonKey(name: 'bot_id')
  int get botId;
  @override
  @JsonKey(name: 'user_llm_id')
  int get userLlmId;

  /// Create a copy of BotLlmChangeEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BotLlmChangeEntityImplCopyWith<_$BotLlmChangeEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
