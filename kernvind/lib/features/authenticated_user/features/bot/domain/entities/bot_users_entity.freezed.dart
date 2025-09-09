// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bot_users_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BotUsersEntity _$BotUsersEntityFromJson(Map<String, dynamic> json) {
  return _BotUsersEntity.fromJson(json);
}

/// @nodoc
mixin _$BotUsersEntity {
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  bool? get userRemoveError => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;

  /// Serializes this BotUsersEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BotUsersEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BotUsersEntityCopyWith<BotUsersEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BotUsersEntityCopyWith<$Res> {
  factory $BotUsersEntityCopyWith(
          BotUsersEntity value, $Res Function(BotUsersEntity) then) =
      _$BotUsersEntityCopyWithImpl<$Res, BotUsersEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') int userId,
      bool? userRemoveError,
      @JsonKey(name: 'full_name') String fullName,
      @JsonKey(name: 'email') String email});
}

/// @nodoc
class _$BotUsersEntityCopyWithImpl<$Res, $Val extends BotUsersEntity>
    implements $BotUsersEntityCopyWith<$Res> {
  _$BotUsersEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BotUsersEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? userRemoveError = freezed,
    Object? fullName = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      userRemoveError: freezed == userRemoveError
          ? _value.userRemoveError
          : userRemoveError // ignore: cast_nullable_to_non_nullable
              as bool?,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BotUsersEntityImplCopyWith<$Res>
    implements $BotUsersEntityCopyWith<$Res> {
  factory _$$BotUsersEntityImplCopyWith(_$BotUsersEntityImpl value,
          $Res Function(_$BotUsersEntityImpl) then) =
      __$$BotUsersEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') int userId,
      bool? userRemoveError,
      @JsonKey(name: 'full_name') String fullName,
      @JsonKey(name: 'email') String email});
}

/// @nodoc
class __$$BotUsersEntityImplCopyWithImpl<$Res>
    extends _$BotUsersEntityCopyWithImpl<$Res, _$BotUsersEntityImpl>
    implements _$$BotUsersEntityImplCopyWith<$Res> {
  __$$BotUsersEntityImplCopyWithImpl(
      _$BotUsersEntityImpl _value, $Res Function(_$BotUsersEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of BotUsersEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? userRemoveError = freezed,
    Object? fullName = null,
    Object? email = null,
  }) {
    return _then(_$BotUsersEntityImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      userRemoveError: freezed == userRemoveError
          ? _value.userRemoveError
          : userRemoveError // ignore: cast_nullable_to_non_nullable
              as bool?,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BotUsersEntityImpl implements _BotUsersEntity {
  _$BotUsersEntityImpl(
      {@JsonKey(name: 'user_id') required this.userId,
      this.userRemoveError,
      @JsonKey(name: 'full_name') required this.fullName,
      @JsonKey(name: 'email') required this.email});

  factory _$BotUsersEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$BotUsersEntityImplFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  final bool? userRemoveError;
  @override
  @JsonKey(name: 'full_name')
  final String fullName;
  @override
  @JsonKey(name: 'email')
  final String email;

  @override
  String toString() {
    return 'BotUsersEntity(userId: $userId, userRemoveError: $userRemoveError, fullName: $fullName, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BotUsersEntityImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userRemoveError, userRemoveError) ||
                other.userRemoveError == userRemoveError) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, userRemoveError, fullName, email);

  /// Create a copy of BotUsersEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BotUsersEntityImplCopyWith<_$BotUsersEntityImpl> get copyWith =>
      __$$BotUsersEntityImplCopyWithImpl<_$BotUsersEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BotUsersEntityImplToJson(
      this,
    );
  }
}

abstract class _BotUsersEntity implements BotUsersEntity {
  factory _BotUsersEntity(
          {@JsonKey(name: 'user_id') required final int userId,
          final bool? userRemoveError,
          @JsonKey(name: 'full_name') required final String fullName,
          @JsonKey(name: 'email') required final String email}) =
      _$BotUsersEntityImpl;

  factory _BotUsersEntity.fromJson(Map<String, dynamic> json) =
      _$BotUsersEntityImpl.fromJson;

  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  bool? get userRemoveError;
  @override
  @JsonKey(name: 'full_name')
  String get fullName;
  @override
  @JsonKey(name: 'email')
  String get email;

  /// Create a copy of BotUsersEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BotUsersEntityImplCopyWith<_$BotUsersEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
