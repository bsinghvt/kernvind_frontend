// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bot_details_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BotDetailsEntity _$BotDetailsEntityFromJson(Map<String, dynamic> json) {
  return _BotDetailsEntity.fromJson(json);
}

/// @nodoc
mixin _$BotDetailsEntity {
  BotEntity get bot => throw _privateConstructorUsedError;
  List<BotUsersEntity> get users => throw _privateConstructorUsedError;

  /// Serializes this BotDetailsEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BotDetailsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BotDetailsEntityCopyWith<BotDetailsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BotDetailsEntityCopyWith<$Res> {
  factory $BotDetailsEntityCopyWith(
          BotDetailsEntity value, $Res Function(BotDetailsEntity) then) =
      _$BotDetailsEntityCopyWithImpl<$Res, BotDetailsEntity>;
  @useResult
  $Res call({BotEntity bot, List<BotUsersEntity> users});

  $BotEntityCopyWith<$Res> get bot;
}

/// @nodoc
class _$BotDetailsEntityCopyWithImpl<$Res, $Val extends BotDetailsEntity>
    implements $BotDetailsEntityCopyWith<$Res> {
  _$BotDetailsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BotDetailsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bot = null,
    Object? users = null,
  }) {
    return _then(_value.copyWith(
      bot: null == bot
          ? _value.bot
          : bot // ignore: cast_nullable_to_non_nullable
              as BotEntity,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<BotUsersEntity>,
    ) as $Val);
  }

  /// Create a copy of BotDetailsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BotEntityCopyWith<$Res> get bot {
    return $BotEntityCopyWith<$Res>(_value.bot, (value) {
      return _then(_value.copyWith(bot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BotDetailsEntityImplCopyWith<$Res>
    implements $BotDetailsEntityCopyWith<$Res> {
  factory _$$BotDetailsEntityImplCopyWith(_$BotDetailsEntityImpl value,
          $Res Function(_$BotDetailsEntityImpl) then) =
      __$$BotDetailsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BotEntity bot, List<BotUsersEntity> users});

  @override
  $BotEntityCopyWith<$Res> get bot;
}

/// @nodoc
class __$$BotDetailsEntityImplCopyWithImpl<$Res>
    extends _$BotDetailsEntityCopyWithImpl<$Res, _$BotDetailsEntityImpl>
    implements _$$BotDetailsEntityImplCopyWith<$Res> {
  __$$BotDetailsEntityImplCopyWithImpl(_$BotDetailsEntityImpl _value,
      $Res Function(_$BotDetailsEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of BotDetailsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bot = null,
    Object? users = null,
  }) {
    return _then(_$BotDetailsEntityImpl(
      bot: null == bot
          ? _value.bot
          : bot // ignore: cast_nullable_to_non_nullable
              as BotEntity,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<BotUsersEntity>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$BotDetailsEntityImpl implements _BotDetailsEntity {
  _$BotDetailsEntityImpl(
      {required this.bot, required final List<BotUsersEntity> users})
      : _users = users;

  factory _$BotDetailsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$BotDetailsEntityImplFromJson(json);

  @override
  final BotEntity bot;
  final List<BotUsersEntity> _users;
  @override
  List<BotUsersEntity> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'BotDetailsEntity(bot: $bot, users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BotDetailsEntityImpl &&
            (identical(other.bot, bot) || other.bot == bot) &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, bot, const DeepCollectionEquality().hash(_users));

  /// Create a copy of BotDetailsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BotDetailsEntityImplCopyWith<_$BotDetailsEntityImpl> get copyWith =>
      __$$BotDetailsEntityImplCopyWithImpl<_$BotDetailsEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BotDetailsEntityImplToJson(
      this,
    );
  }
}

abstract class _BotDetailsEntity implements BotDetailsEntity {
  factory _BotDetailsEntity(
      {required final BotEntity bot,
      required final List<BotUsersEntity> users}) = _$BotDetailsEntityImpl;

  factory _BotDetailsEntity.fromJson(Map<String, dynamic> json) =
      _$BotDetailsEntityImpl.fromJson;

  @override
  BotEntity get bot;
  @override
  List<BotUsersEntity> get users;

  /// Create a copy of BotDetailsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BotDetailsEntityImplCopyWith<_$BotDetailsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
