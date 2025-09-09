// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bot_update_name_desc_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BotUpdateNameDescEntity _$BotUpdateNameDescEntityFromJson(
    Map<String, dynamic> json) {
  return _BotUpdateNameDescEntity.fromJson(json);
}

/// @nodoc
mixin _$BotUpdateNameDescEntity {
  @JsonKey(name: 'bot_id')
  int get botId => throw _privateConstructorUsedError;
  @JsonKey(name: 'bot_name')
  String get botName => throw _privateConstructorUsedError;
  @JsonKey(name: 'bot_description')
  String? get botDescription => throw _privateConstructorUsedError;

  /// Serializes this BotUpdateNameDescEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BotUpdateNameDescEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BotUpdateNameDescEntityCopyWith<BotUpdateNameDescEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BotUpdateNameDescEntityCopyWith<$Res> {
  factory $BotUpdateNameDescEntityCopyWith(BotUpdateNameDescEntity value,
          $Res Function(BotUpdateNameDescEntity) then) =
      _$BotUpdateNameDescEntityCopyWithImpl<$Res, BotUpdateNameDescEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'bot_id') int botId,
      @JsonKey(name: 'bot_name') String botName,
      @JsonKey(name: 'bot_description') String? botDescription});
}

/// @nodoc
class _$BotUpdateNameDescEntityCopyWithImpl<$Res,
        $Val extends BotUpdateNameDescEntity>
    implements $BotUpdateNameDescEntityCopyWith<$Res> {
  _$BotUpdateNameDescEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BotUpdateNameDescEntity
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
abstract class _$$BotUpdateNameDescEntityImplCopyWith<$Res>
    implements $BotUpdateNameDescEntityCopyWith<$Res> {
  factory _$$BotUpdateNameDescEntityImplCopyWith(
          _$BotUpdateNameDescEntityImpl value,
          $Res Function(_$BotUpdateNameDescEntityImpl) then) =
      __$$BotUpdateNameDescEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'bot_id') int botId,
      @JsonKey(name: 'bot_name') String botName,
      @JsonKey(name: 'bot_description') String? botDescription});
}

/// @nodoc
class __$$BotUpdateNameDescEntityImplCopyWithImpl<$Res>
    extends _$BotUpdateNameDescEntityCopyWithImpl<$Res,
        _$BotUpdateNameDescEntityImpl>
    implements _$$BotUpdateNameDescEntityImplCopyWith<$Res> {
  __$$BotUpdateNameDescEntityImplCopyWithImpl(
      _$BotUpdateNameDescEntityImpl _value,
      $Res Function(_$BotUpdateNameDescEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of BotUpdateNameDescEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? botId = null,
    Object? botName = null,
    Object? botDescription = freezed,
  }) {
    return _then(_$BotUpdateNameDescEntityImpl(
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
class _$BotUpdateNameDescEntityImpl implements _BotUpdateNameDescEntity {
  _$BotUpdateNameDescEntityImpl(
      {@JsonKey(name: 'bot_id') required this.botId,
      @JsonKey(name: 'bot_name') required this.botName,
      @JsonKey(name: 'bot_description') this.botDescription});

  factory _$BotUpdateNameDescEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$BotUpdateNameDescEntityImplFromJson(json);

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
    return 'BotUpdateNameDescEntity(botId: $botId, botName: $botName, botDescription: $botDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BotUpdateNameDescEntityImpl &&
            (identical(other.botId, botId) || other.botId == botId) &&
            (identical(other.botName, botName) || other.botName == botName) &&
            (identical(other.botDescription, botDescription) ||
                other.botDescription == botDescription));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, botId, botName, botDescription);

  /// Create a copy of BotUpdateNameDescEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BotUpdateNameDescEntityImplCopyWith<_$BotUpdateNameDescEntityImpl>
      get copyWith => __$$BotUpdateNameDescEntityImplCopyWithImpl<
          _$BotUpdateNameDescEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BotUpdateNameDescEntityImplToJson(
      this,
    );
  }
}

abstract class _BotUpdateNameDescEntity implements BotUpdateNameDescEntity {
  factory _BotUpdateNameDescEntity(
          {@JsonKey(name: 'bot_id') required final int botId,
          @JsonKey(name: 'bot_name') required final String botName,
          @JsonKey(name: 'bot_description') final String? botDescription}) =
      _$BotUpdateNameDescEntityImpl;

  factory _BotUpdateNameDescEntity.fromJson(Map<String, dynamic> json) =
      _$BotUpdateNameDescEntityImpl.fromJson;

  @override
  @JsonKey(name: 'bot_id')
  int get botId;
  @override
  @JsonKey(name: 'bot_name')
  String get botName;
  @override
  @JsonKey(name: 'bot_description')
  String? get botDescription;

  /// Create a copy of BotUpdateNameDescEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BotUpdateNameDescEntityImplCopyWith<_$BotUpdateNameDescEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
