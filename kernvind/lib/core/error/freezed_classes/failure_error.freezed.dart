// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FailureError _$FailureErrorFromJson(Map<String, dynamic> json) {
  return _FailureError.fromJson(json);
}

/// @nodoc
mixin _$FailureError {
  String get error => throw _privateConstructorUsedError;

  /// Serializes this FailureError to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FailureError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FailureErrorCopyWith<FailureError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureErrorCopyWith<$Res> {
  factory $FailureErrorCopyWith(
          FailureError value, $Res Function(FailureError) then) =
      _$FailureErrorCopyWithImpl<$Res, FailureError>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$FailureErrorCopyWithImpl<$Res, $Val extends FailureError>
    implements $FailureErrorCopyWith<$Res> {
  _$FailureErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FailureError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FailureErrorImplCopyWith<$Res>
    implements $FailureErrorCopyWith<$Res> {
  factory _$$FailureErrorImplCopyWith(
          _$FailureErrorImpl value, $Res Function(_$FailureErrorImpl) then) =
      __$$FailureErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$FailureErrorImplCopyWithImpl<$Res>
    extends _$FailureErrorCopyWithImpl<$Res, _$FailureErrorImpl>
    implements _$$FailureErrorImplCopyWith<$Res> {
  __$$FailureErrorImplCopyWithImpl(
      _$FailureErrorImpl _value, $Res Function(_$FailureErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of FailureError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FailureErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FailureErrorImpl implements _FailureError {
  _$FailureErrorImpl({this.error = "Something went worng in app."});

  factory _$FailureErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$FailureErrorImplFromJson(json);

  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'FailureError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of FailureError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureErrorImplCopyWith<_$FailureErrorImpl> get copyWith =>
      __$$FailureErrorImplCopyWithImpl<_$FailureErrorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FailureErrorImplToJson(
      this,
    );
  }
}

abstract class _FailureError implements FailureError {
  factory _FailureError({final String error}) = _$FailureErrorImpl;

  factory _FailureError.fromJson(Map<String, dynamic> json) =
      _$FailureErrorImpl.fromJson;

  @override
  String get error;

  /// Create a copy of FailureError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureErrorImplCopyWith<_$FailureErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
