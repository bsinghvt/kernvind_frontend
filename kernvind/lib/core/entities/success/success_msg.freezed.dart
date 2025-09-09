// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'success_msg.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SuccessMsg _$SuccessMsgFromJson(Map<String, dynamic> json) {
  return _SuccessMsg.fromJson(json);
}

/// @nodoc
mixin _$SuccessMsg {
  String get msg => throw _privateConstructorUsedError;

  /// Serializes this SuccessMsg to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SuccessMsg
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SuccessMsgCopyWith<SuccessMsg> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessMsgCopyWith<$Res> {
  factory $SuccessMsgCopyWith(
          SuccessMsg value, $Res Function(SuccessMsg) then) =
      _$SuccessMsgCopyWithImpl<$Res, SuccessMsg>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class _$SuccessMsgCopyWithImpl<$Res, $Val extends SuccessMsg>
    implements $SuccessMsgCopyWith<$Res> {
  _$SuccessMsgCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SuccessMsg
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_value.copyWith(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SuccessMsgImplCopyWith<$Res>
    implements $SuccessMsgCopyWith<$Res> {
  factory _$$SuccessMsgImplCopyWith(
          _$SuccessMsgImpl value, $Res Function(_$SuccessMsgImpl) then) =
      __$$SuccessMsgImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$SuccessMsgImplCopyWithImpl<$Res>
    extends _$SuccessMsgCopyWithImpl<$Res, _$SuccessMsgImpl>
    implements _$$SuccessMsgImplCopyWith<$Res> {
  __$$SuccessMsgImplCopyWithImpl(
      _$SuccessMsgImpl _value, $Res Function(_$SuccessMsgImpl) _then)
      : super(_value, _then);

  /// Create a copy of SuccessMsg
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$SuccessMsgImpl(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SuccessMsgImpl implements _SuccessMsg {
  _$SuccessMsgImpl({required this.msg});

  factory _$SuccessMsgImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuccessMsgImplFromJson(json);

  @override
  final String msg;

  @override
  String toString() {
    return 'SuccessMsg(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessMsgImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, msg);

  /// Create a copy of SuccessMsg
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessMsgImplCopyWith<_$SuccessMsgImpl> get copyWith =>
      __$$SuccessMsgImplCopyWithImpl<_$SuccessMsgImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SuccessMsgImplToJson(
      this,
    );
  }
}

abstract class _SuccessMsg implements SuccessMsg {
  factory _SuccessMsg({required final String msg}) = _$SuccessMsgImpl;

  factory _SuccessMsg.fromJson(Map<String, dynamic> json) =
      _$SuccessMsgImpl.fromJson;

  @override
  String get msg;

  /// Create a copy of SuccessMsg
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessMsgImplCopyWith<_$SuccessMsgImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
