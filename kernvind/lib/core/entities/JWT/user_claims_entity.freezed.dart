// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_claims_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserClaimsEntity _$UserClaimsEntityFromJson(Map<String, dynamic> json) {
  return _UserClaimsEntity.fromJson(json);
}

/// @nodoc
mixin _$UserClaimsEntity {
  @JsonKey(name: 'full_name')
  String get fullName => throw _privateConstructorUsedError;

  /// Serializes this UserClaimsEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserClaimsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserClaimsEntityCopyWith<UserClaimsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserClaimsEntityCopyWith<$Res> {
  factory $UserClaimsEntityCopyWith(
          UserClaimsEntity value, $Res Function(UserClaimsEntity) then) =
      _$UserClaimsEntityCopyWithImpl<$Res, UserClaimsEntity>;
  @useResult
  $Res call({@JsonKey(name: 'full_name') String fullName});
}

/// @nodoc
class _$UserClaimsEntityCopyWithImpl<$Res, $Val extends UserClaimsEntity>
    implements $UserClaimsEntityCopyWith<$Res> {
  _$UserClaimsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserClaimsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
  }) {
    return _then(_value.copyWith(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserClaimsEntityImplCopyWith<$Res>
    implements $UserClaimsEntityCopyWith<$Res> {
  factory _$$UserClaimsEntityImplCopyWith(_$UserClaimsEntityImpl value,
          $Res Function(_$UserClaimsEntityImpl) then) =
      __$$UserClaimsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'full_name') String fullName});
}

/// @nodoc
class __$$UserClaimsEntityImplCopyWithImpl<$Res>
    extends _$UserClaimsEntityCopyWithImpl<$Res, _$UserClaimsEntityImpl>
    implements _$$UserClaimsEntityImplCopyWith<$Res> {
  __$$UserClaimsEntityImplCopyWithImpl(_$UserClaimsEntityImpl _value,
      $Res Function(_$UserClaimsEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserClaimsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
  }) {
    return _then(_$UserClaimsEntityImpl(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserClaimsEntityImpl implements _UserClaimsEntity {
  _$UserClaimsEntityImpl({@JsonKey(name: 'full_name') required this.fullName});

  factory _$UserClaimsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserClaimsEntityImplFromJson(json);

  @override
  @JsonKey(name: 'full_name')
  final String fullName;

  @override
  String toString() {
    return 'UserClaimsEntity(fullName: $fullName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserClaimsEntityImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fullName);

  /// Create a copy of UserClaimsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserClaimsEntityImplCopyWith<_$UserClaimsEntityImpl> get copyWith =>
      __$$UserClaimsEntityImplCopyWithImpl<_$UserClaimsEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserClaimsEntityImplToJson(
      this,
    );
  }
}

abstract class _UserClaimsEntity implements UserClaimsEntity {
  factory _UserClaimsEntity(
          {@JsonKey(name: 'full_name') required final String fullName}) =
      _$UserClaimsEntityImpl;

  factory _UserClaimsEntity.fromJson(Map<String, dynamic> json) =
      _$UserClaimsEntityImpl.fromJson;

  @override
  @JsonKey(name: 'full_name')
  String get fullName;

  /// Create a copy of UserClaimsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserClaimsEntityImplCopyWith<_$UserClaimsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
