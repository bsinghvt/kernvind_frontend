// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channel_close_reason_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChannelCloseReasonEntity _$ChannelCloseReasonEntityFromJson(
    Map<String, dynamic> json) {
  return _ChannelCloseReasonEntity.fromJson(json);
}

/// @nodoc
mixin _$ChannelCloseReasonEntity {
  String? get closeReason => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;

  /// Serializes this ChannelCloseReasonEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChannelCloseReasonEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChannelCloseReasonEntityCopyWith<ChannelCloseReasonEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelCloseReasonEntityCopyWith<$Res> {
  factory $ChannelCloseReasonEntityCopyWith(ChannelCloseReasonEntity value,
          $Res Function(ChannelCloseReasonEntity) then) =
      _$ChannelCloseReasonEntityCopyWithImpl<$Res, ChannelCloseReasonEntity>;
  @useResult
  $Res call({String? closeReason, int? code});
}

/// @nodoc
class _$ChannelCloseReasonEntityCopyWithImpl<$Res,
        $Val extends ChannelCloseReasonEntity>
    implements $ChannelCloseReasonEntityCopyWith<$Res> {
  _$ChannelCloseReasonEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChannelCloseReasonEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? closeReason = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      closeReason: freezed == closeReason
          ? _value.closeReason
          : closeReason // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChannelCloseReasonEntityImplCopyWith<$Res>
    implements $ChannelCloseReasonEntityCopyWith<$Res> {
  factory _$$ChannelCloseReasonEntityImplCopyWith(
          _$ChannelCloseReasonEntityImpl value,
          $Res Function(_$ChannelCloseReasonEntityImpl) then) =
      __$$ChannelCloseReasonEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? closeReason, int? code});
}

/// @nodoc
class __$$ChannelCloseReasonEntityImplCopyWithImpl<$Res>
    extends _$ChannelCloseReasonEntityCopyWithImpl<$Res,
        _$ChannelCloseReasonEntityImpl>
    implements _$$ChannelCloseReasonEntityImplCopyWith<$Res> {
  __$$ChannelCloseReasonEntityImplCopyWithImpl(
      _$ChannelCloseReasonEntityImpl _value,
      $Res Function(_$ChannelCloseReasonEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChannelCloseReasonEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? closeReason = freezed,
    Object? code = freezed,
  }) {
    return _then(_$ChannelCloseReasonEntityImpl(
      closeReason: freezed == closeReason
          ? _value.closeReason
          : closeReason // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChannelCloseReasonEntityImpl implements _ChannelCloseReasonEntity {
  _$ChannelCloseReasonEntityImpl({this.closeReason, this.code});

  factory _$ChannelCloseReasonEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChannelCloseReasonEntityImplFromJson(json);

  @override
  final String? closeReason;
  @override
  final int? code;

  @override
  String toString() {
    return 'ChannelCloseReasonEntity(closeReason: $closeReason, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChannelCloseReasonEntityImpl &&
            (identical(other.closeReason, closeReason) ||
                other.closeReason == closeReason) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, closeReason, code);

  /// Create a copy of ChannelCloseReasonEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChannelCloseReasonEntityImplCopyWith<_$ChannelCloseReasonEntityImpl>
      get copyWith => __$$ChannelCloseReasonEntityImplCopyWithImpl<
          _$ChannelCloseReasonEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChannelCloseReasonEntityImplToJson(
      this,
    );
  }
}

abstract class _ChannelCloseReasonEntity implements ChannelCloseReasonEntity {
  factory _ChannelCloseReasonEntity(
      {final String? closeReason,
      final int? code}) = _$ChannelCloseReasonEntityImpl;

  factory _ChannelCloseReasonEntity.fromJson(Map<String, dynamic> json) =
      _$ChannelCloseReasonEntityImpl.fromJson;

  @override
  String? get closeReason;
  @override
  int? get code;

  /// Create a copy of ChannelCloseReasonEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChannelCloseReasonEntityImplCopyWith<_$ChannelCloseReasonEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
