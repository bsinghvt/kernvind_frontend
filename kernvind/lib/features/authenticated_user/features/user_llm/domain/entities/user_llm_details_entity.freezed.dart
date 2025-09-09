// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_llm_details_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserLlmDetailsEntity _$UserLlmDetailsEntityFromJson(Map<String, dynamic> json) {
  return _UserLlmDetailsEntity.fromJson(json);
}

/// @nodoc
mixin _$UserLlmDetailsEntity {
  @JsonKey(name: 'user_llm')
  UserLlmInEntity get userLlm => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_llm_bots')
  List<UserLlmBotEntity> get userLlmBots => throw _privateConstructorUsedError;

  /// Serializes this UserLlmDetailsEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserLlmDetailsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserLlmDetailsEntityCopyWith<UserLlmDetailsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLlmDetailsEntityCopyWith<$Res> {
  factory $UserLlmDetailsEntityCopyWith(UserLlmDetailsEntity value,
          $Res Function(UserLlmDetailsEntity) then) =
      _$UserLlmDetailsEntityCopyWithImpl<$Res, UserLlmDetailsEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_llm') UserLlmInEntity userLlm,
      @JsonKey(name: 'user_llm_bots') List<UserLlmBotEntity> userLlmBots});

  $UserLlmInEntityCopyWith<$Res> get userLlm;
}

/// @nodoc
class _$UserLlmDetailsEntityCopyWithImpl<$Res,
        $Val extends UserLlmDetailsEntity>
    implements $UserLlmDetailsEntityCopyWith<$Res> {
  _$UserLlmDetailsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserLlmDetailsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userLlm = null,
    Object? userLlmBots = null,
  }) {
    return _then(_value.copyWith(
      userLlm: null == userLlm
          ? _value.userLlm
          : userLlm // ignore: cast_nullable_to_non_nullable
              as UserLlmInEntity,
      userLlmBots: null == userLlmBots
          ? _value.userLlmBots
          : userLlmBots // ignore: cast_nullable_to_non_nullable
              as List<UserLlmBotEntity>,
    ) as $Val);
  }

  /// Create a copy of UserLlmDetailsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserLlmInEntityCopyWith<$Res> get userLlm {
    return $UserLlmInEntityCopyWith<$Res>(_value.userLlm, (value) {
      return _then(_value.copyWith(userLlm: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserLlmDetailsEntityImplCopyWith<$Res>
    implements $UserLlmDetailsEntityCopyWith<$Res> {
  factory _$$UserLlmDetailsEntityImplCopyWith(_$UserLlmDetailsEntityImpl value,
          $Res Function(_$UserLlmDetailsEntityImpl) then) =
      __$$UserLlmDetailsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_llm') UserLlmInEntity userLlm,
      @JsonKey(name: 'user_llm_bots') List<UserLlmBotEntity> userLlmBots});

  @override
  $UserLlmInEntityCopyWith<$Res> get userLlm;
}

/// @nodoc
class __$$UserLlmDetailsEntityImplCopyWithImpl<$Res>
    extends _$UserLlmDetailsEntityCopyWithImpl<$Res, _$UserLlmDetailsEntityImpl>
    implements _$$UserLlmDetailsEntityImplCopyWith<$Res> {
  __$$UserLlmDetailsEntityImplCopyWithImpl(_$UserLlmDetailsEntityImpl _value,
      $Res Function(_$UserLlmDetailsEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserLlmDetailsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userLlm = null,
    Object? userLlmBots = null,
  }) {
    return _then(_$UserLlmDetailsEntityImpl(
      userLlm: null == userLlm
          ? _value.userLlm
          : userLlm // ignore: cast_nullable_to_non_nullable
              as UserLlmInEntity,
      userLlmBots: null == userLlmBots
          ? _value._userLlmBots
          : userLlmBots // ignore: cast_nullable_to_non_nullable
              as List<UserLlmBotEntity>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UserLlmDetailsEntityImpl implements _UserLlmDetailsEntity {
  _$UserLlmDetailsEntityImpl(
      {@JsonKey(name: 'user_llm') required this.userLlm,
      @JsonKey(name: 'user_llm_bots')
      required final List<UserLlmBotEntity> userLlmBots})
      : _userLlmBots = userLlmBots;

  factory _$UserLlmDetailsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserLlmDetailsEntityImplFromJson(json);

  @override
  @JsonKey(name: 'user_llm')
  final UserLlmInEntity userLlm;
  final List<UserLlmBotEntity> _userLlmBots;
  @override
  @JsonKey(name: 'user_llm_bots')
  List<UserLlmBotEntity> get userLlmBots {
    if (_userLlmBots is EqualUnmodifiableListView) return _userLlmBots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userLlmBots);
  }

  @override
  String toString() {
    return 'UserLlmDetailsEntity(userLlm: $userLlm, userLlmBots: $userLlmBots)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLlmDetailsEntityImpl &&
            (identical(other.userLlm, userLlm) || other.userLlm == userLlm) &&
            const DeepCollectionEquality()
                .equals(other._userLlmBots, _userLlmBots));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, userLlm, const DeepCollectionEquality().hash(_userLlmBots));

  /// Create a copy of UserLlmDetailsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLlmDetailsEntityImplCopyWith<_$UserLlmDetailsEntityImpl>
      get copyWith =>
          __$$UserLlmDetailsEntityImplCopyWithImpl<_$UserLlmDetailsEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserLlmDetailsEntityImplToJson(
      this,
    );
  }
}

abstract class _UserLlmDetailsEntity implements UserLlmDetailsEntity {
  factory _UserLlmDetailsEntity(
          {@JsonKey(name: 'user_llm') required final UserLlmInEntity userLlm,
          @JsonKey(name: 'user_llm_bots')
          required final List<UserLlmBotEntity> userLlmBots}) =
      _$UserLlmDetailsEntityImpl;

  factory _UserLlmDetailsEntity.fromJson(Map<String, dynamic> json) =
      _$UserLlmDetailsEntityImpl.fromJson;

  @override
  @JsonKey(name: 'user_llm')
  UserLlmInEntity get userLlm;
  @override
  @JsonKey(name: 'user_llm_bots')
  List<UserLlmBotEntity> get userLlmBots;

  /// Create a copy of UserLlmDetailsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserLlmDetailsEntityImplCopyWith<_$UserLlmDetailsEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
