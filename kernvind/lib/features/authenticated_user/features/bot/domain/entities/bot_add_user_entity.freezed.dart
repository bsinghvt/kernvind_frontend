// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bot_add_user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BotAddUserEntity _$BotAddUserEntityFromJson(Map<String, dynamic> json) {
  return _BotAddUserEntity.fromJson(json);
}

/// @nodoc
mixin _$BotAddUserEntity {
  @JsonKey(name: 'bot_id')
  int get botId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_to_add_email')
  String get userToAddEmail => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_add_users')
  bool get canAddUsers => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_change_datasource')
  bool get canChangeDatasource => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_see_datasource')
  bool get canSeeDatasource => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_see_datasourcefeed')
  bool get canSeeDatasourcefeed => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_change_datasourcefeed')
  bool get canChangeDatasourcefeed => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_see_llm')
  bool get canSeeLlm => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_change_llm')
  bool get canChangeLlm => throw _privateConstructorUsedError;

  /// Serializes this BotAddUserEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BotAddUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BotAddUserEntityCopyWith<BotAddUserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BotAddUserEntityCopyWith<$Res> {
  factory $BotAddUserEntityCopyWith(
          BotAddUserEntity value, $Res Function(BotAddUserEntity) then) =
      _$BotAddUserEntityCopyWithImpl<$Res, BotAddUserEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'bot_id') int botId,
      @JsonKey(name: 'user_to_add_email') String userToAddEmail,
      @JsonKey(name: 'can_add_users') bool canAddUsers,
      @JsonKey(name: 'can_change_datasource') bool canChangeDatasource,
      @JsonKey(name: 'can_see_datasource') bool canSeeDatasource,
      @JsonKey(name: 'can_see_datasourcefeed') bool canSeeDatasourcefeed,
      @JsonKey(name: 'can_change_datasourcefeed') bool canChangeDatasourcefeed,
      @JsonKey(name: 'can_see_llm') bool canSeeLlm,
      @JsonKey(name: 'can_change_llm') bool canChangeLlm});
}

/// @nodoc
class _$BotAddUserEntityCopyWithImpl<$Res, $Val extends BotAddUserEntity>
    implements $BotAddUserEntityCopyWith<$Res> {
  _$BotAddUserEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BotAddUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? botId = null,
    Object? userToAddEmail = null,
    Object? canAddUsers = null,
    Object? canChangeDatasource = null,
    Object? canSeeDatasource = null,
    Object? canSeeDatasourcefeed = null,
    Object? canChangeDatasourcefeed = null,
    Object? canSeeLlm = null,
    Object? canChangeLlm = null,
  }) {
    return _then(_value.copyWith(
      botId: null == botId
          ? _value.botId
          : botId // ignore: cast_nullable_to_non_nullable
              as int,
      userToAddEmail: null == userToAddEmail
          ? _value.userToAddEmail
          : userToAddEmail // ignore: cast_nullable_to_non_nullable
              as String,
      canAddUsers: null == canAddUsers
          ? _value.canAddUsers
          : canAddUsers // ignore: cast_nullable_to_non_nullable
              as bool,
      canChangeDatasource: null == canChangeDatasource
          ? _value.canChangeDatasource
          : canChangeDatasource // ignore: cast_nullable_to_non_nullable
              as bool,
      canSeeDatasource: null == canSeeDatasource
          ? _value.canSeeDatasource
          : canSeeDatasource // ignore: cast_nullable_to_non_nullable
              as bool,
      canSeeDatasourcefeed: null == canSeeDatasourcefeed
          ? _value.canSeeDatasourcefeed
          : canSeeDatasourcefeed // ignore: cast_nullable_to_non_nullable
              as bool,
      canChangeDatasourcefeed: null == canChangeDatasourcefeed
          ? _value.canChangeDatasourcefeed
          : canChangeDatasourcefeed // ignore: cast_nullable_to_non_nullable
              as bool,
      canSeeLlm: null == canSeeLlm
          ? _value.canSeeLlm
          : canSeeLlm // ignore: cast_nullable_to_non_nullable
              as bool,
      canChangeLlm: null == canChangeLlm
          ? _value.canChangeLlm
          : canChangeLlm // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BotAddUserEntityImplCopyWith<$Res>
    implements $BotAddUserEntityCopyWith<$Res> {
  factory _$$BotAddUserEntityImplCopyWith(_$BotAddUserEntityImpl value,
          $Res Function(_$BotAddUserEntityImpl) then) =
      __$$BotAddUserEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'bot_id') int botId,
      @JsonKey(name: 'user_to_add_email') String userToAddEmail,
      @JsonKey(name: 'can_add_users') bool canAddUsers,
      @JsonKey(name: 'can_change_datasource') bool canChangeDatasource,
      @JsonKey(name: 'can_see_datasource') bool canSeeDatasource,
      @JsonKey(name: 'can_see_datasourcefeed') bool canSeeDatasourcefeed,
      @JsonKey(name: 'can_change_datasourcefeed') bool canChangeDatasourcefeed,
      @JsonKey(name: 'can_see_llm') bool canSeeLlm,
      @JsonKey(name: 'can_change_llm') bool canChangeLlm});
}

/// @nodoc
class __$$BotAddUserEntityImplCopyWithImpl<$Res>
    extends _$BotAddUserEntityCopyWithImpl<$Res, _$BotAddUserEntityImpl>
    implements _$$BotAddUserEntityImplCopyWith<$Res> {
  __$$BotAddUserEntityImplCopyWithImpl(_$BotAddUserEntityImpl _value,
      $Res Function(_$BotAddUserEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of BotAddUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? botId = null,
    Object? userToAddEmail = null,
    Object? canAddUsers = null,
    Object? canChangeDatasource = null,
    Object? canSeeDatasource = null,
    Object? canSeeDatasourcefeed = null,
    Object? canChangeDatasourcefeed = null,
    Object? canSeeLlm = null,
    Object? canChangeLlm = null,
  }) {
    return _then(_$BotAddUserEntityImpl(
      botId: null == botId
          ? _value.botId
          : botId // ignore: cast_nullable_to_non_nullable
              as int,
      userToAddEmail: null == userToAddEmail
          ? _value.userToAddEmail
          : userToAddEmail // ignore: cast_nullable_to_non_nullable
              as String,
      canAddUsers: null == canAddUsers
          ? _value.canAddUsers
          : canAddUsers // ignore: cast_nullable_to_non_nullable
              as bool,
      canChangeDatasource: null == canChangeDatasource
          ? _value.canChangeDatasource
          : canChangeDatasource // ignore: cast_nullable_to_non_nullable
              as bool,
      canSeeDatasource: null == canSeeDatasource
          ? _value.canSeeDatasource
          : canSeeDatasource // ignore: cast_nullable_to_non_nullable
              as bool,
      canSeeDatasourcefeed: null == canSeeDatasourcefeed
          ? _value.canSeeDatasourcefeed
          : canSeeDatasourcefeed // ignore: cast_nullable_to_non_nullable
              as bool,
      canChangeDatasourcefeed: null == canChangeDatasourcefeed
          ? _value.canChangeDatasourcefeed
          : canChangeDatasourcefeed // ignore: cast_nullable_to_non_nullable
              as bool,
      canSeeLlm: null == canSeeLlm
          ? _value.canSeeLlm
          : canSeeLlm // ignore: cast_nullable_to_non_nullable
              as bool,
      canChangeLlm: null == canChangeLlm
          ? _value.canChangeLlm
          : canChangeLlm // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BotAddUserEntityImpl implements _BotAddUserEntity {
  _$BotAddUserEntityImpl(
      {@JsonKey(name: 'bot_id') required this.botId,
      @JsonKey(name: 'user_to_add_email') required this.userToAddEmail,
      @JsonKey(name: 'can_add_users') required this.canAddUsers,
      @JsonKey(name: 'can_change_datasource') required this.canChangeDatasource,
      @JsonKey(name: 'can_see_datasource') required this.canSeeDatasource,
      @JsonKey(name: 'can_see_datasourcefeed')
      required this.canSeeDatasourcefeed,
      @JsonKey(name: 'can_change_datasourcefeed')
      required this.canChangeDatasourcefeed,
      @JsonKey(name: 'can_see_llm') required this.canSeeLlm,
      @JsonKey(name: 'can_change_llm') required this.canChangeLlm});

  factory _$BotAddUserEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$BotAddUserEntityImplFromJson(json);

  @override
  @JsonKey(name: 'bot_id')
  final int botId;
  @override
  @JsonKey(name: 'user_to_add_email')
  final String userToAddEmail;
  @override
  @JsonKey(name: 'can_add_users')
  final bool canAddUsers;
  @override
  @JsonKey(name: 'can_change_datasource')
  final bool canChangeDatasource;
  @override
  @JsonKey(name: 'can_see_datasource')
  final bool canSeeDatasource;
  @override
  @JsonKey(name: 'can_see_datasourcefeed')
  final bool canSeeDatasourcefeed;
  @override
  @JsonKey(name: 'can_change_datasourcefeed')
  final bool canChangeDatasourcefeed;
  @override
  @JsonKey(name: 'can_see_llm')
  final bool canSeeLlm;
  @override
  @JsonKey(name: 'can_change_llm')
  final bool canChangeLlm;

  @override
  String toString() {
    return 'BotAddUserEntity(botId: $botId, userToAddEmail: $userToAddEmail, canAddUsers: $canAddUsers, canChangeDatasource: $canChangeDatasource, canSeeDatasource: $canSeeDatasource, canSeeDatasourcefeed: $canSeeDatasourcefeed, canChangeDatasourcefeed: $canChangeDatasourcefeed, canSeeLlm: $canSeeLlm, canChangeLlm: $canChangeLlm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BotAddUserEntityImpl &&
            (identical(other.botId, botId) || other.botId == botId) &&
            (identical(other.userToAddEmail, userToAddEmail) ||
                other.userToAddEmail == userToAddEmail) &&
            (identical(other.canAddUsers, canAddUsers) ||
                other.canAddUsers == canAddUsers) &&
            (identical(other.canChangeDatasource, canChangeDatasource) ||
                other.canChangeDatasource == canChangeDatasource) &&
            (identical(other.canSeeDatasource, canSeeDatasource) ||
                other.canSeeDatasource == canSeeDatasource) &&
            (identical(other.canSeeDatasourcefeed, canSeeDatasourcefeed) ||
                other.canSeeDatasourcefeed == canSeeDatasourcefeed) &&
            (identical(
                    other.canChangeDatasourcefeed, canChangeDatasourcefeed) ||
                other.canChangeDatasourcefeed == canChangeDatasourcefeed) &&
            (identical(other.canSeeLlm, canSeeLlm) ||
                other.canSeeLlm == canSeeLlm) &&
            (identical(other.canChangeLlm, canChangeLlm) ||
                other.canChangeLlm == canChangeLlm));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      botId,
      userToAddEmail,
      canAddUsers,
      canChangeDatasource,
      canSeeDatasource,
      canSeeDatasourcefeed,
      canChangeDatasourcefeed,
      canSeeLlm,
      canChangeLlm);

  /// Create a copy of BotAddUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BotAddUserEntityImplCopyWith<_$BotAddUserEntityImpl> get copyWith =>
      __$$BotAddUserEntityImplCopyWithImpl<_$BotAddUserEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BotAddUserEntityImplToJson(
      this,
    );
  }
}

abstract class _BotAddUserEntity implements BotAddUserEntity {
  factory _BotAddUserEntity(
      {@JsonKey(name: 'bot_id') required final int botId,
      @JsonKey(name: 'user_to_add_email') required final String userToAddEmail,
      @JsonKey(name: 'can_add_users') required final bool canAddUsers,
      @JsonKey(name: 'can_change_datasource')
      required final bool canChangeDatasource,
      @JsonKey(name: 'can_see_datasource') required final bool canSeeDatasource,
      @JsonKey(name: 'can_see_datasourcefeed')
      required final bool canSeeDatasourcefeed,
      @JsonKey(name: 'can_change_datasourcefeed')
      required final bool canChangeDatasourcefeed,
      @JsonKey(name: 'can_see_llm') required final bool canSeeLlm,
      @JsonKey(name: 'can_change_llm')
      required final bool canChangeLlm}) = _$BotAddUserEntityImpl;

  factory _BotAddUserEntity.fromJson(Map<String, dynamic> json) =
      _$BotAddUserEntityImpl.fromJson;

  @override
  @JsonKey(name: 'bot_id')
  int get botId;
  @override
  @JsonKey(name: 'user_to_add_email')
  String get userToAddEmail;
  @override
  @JsonKey(name: 'can_add_users')
  bool get canAddUsers;
  @override
  @JsonKey(name: 'can_change_datasource')
  bool get canChangeDatasource;
  @override
  @JsonKey(name: 'can_see_datasource')
  bool get canSeeDatasource;
  @override
  @JsonKey(name: 'can_see_datasourcefeed')
  bool get canSeeDatasourcefeed;
  @override
  @JsonKey(name: 'can_change_datasourcefeed')
  bool get canChangeDatasourcefeed;
  @override
  @JsonKey(name: 'can_see_llm')
  bool get canSeeLlm;
  @override
  @JsonKey(name: 'can_change_llm')
  bool get canChangeLlm;

  /// Create a copy of BotAddUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BotAddUserEntityImplCopyWith<_$BotAddUserEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
