// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'public_llm_list_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PublicLlmListEntity _$PublicLlmListEntityFromJson(Map<String, dynamic> json) {
  return _PublicLlmListEntity.fromJson(json);
}

/// @nodoc
mixin _$PublicLlmListEntity {
  @JsonKey(name: 'llm_name')
  String get llmName => throw _privateConstructorUsedError;
  @JsonKey(name: 'llmmodeltype_name')
  String get llmmodeltypeName => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;
  DateTime get modified => throw _privateConstructorUsedError;

  /// Serializes this PublicLlmListEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PublicLlmListEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PublicLlmListEntityCopyWith<PublicLlmListEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublicLlmListEntityCopyWith<$Res> {
  factory $PublicLlmListEntityCopyWith(
          PublicLlmListEntity value, $Res Function(PublicLlmListEntity) then) =
      _$PublicLlmListEntityCopyWithImpl<$Res, PublicLlmListEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'llm_name') String llmName,
      @JsonKey(name: 'llmmodeltype_name') String llmmodeltypeName,
      DateTime created,
      DateTime modified});
}

/// @nodoc
class _$PublicLlmListEntityCopyWithImpl<$Res, $Val extends PublicLlmListEntity>
    implements $PublicLlmListEntityCopyWith<$Res> {
  _$PublicLlmListEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PublicLlmListEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? llmName = null,
    Object? llmmodeltypeName = null,
    Object? created = null,
    Object? modified = null,
  }) {
    return _then(_value.copyWith(
      llmName: null == llmName
          ? _value.llmName
          : llmName // ignore: cast_nullable_to_non_nullable
              as String,
      llmmodeltypeName: null == llmmodeltypeName
          ? _value.llmmodeltypeName
          : llmmodeltypeName // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      modified: null == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PublicLlmListEntityImplCopyWith<$Res>
    implements $PublicLlmListEntityCopyWith<$Res> {
  factory _$$PublicLlmListEntityImplCopyWith(_$PublicLlmListEntityImpl value,
          $Res Function(_$PublicLlmListEntityImpl) then) =
      __$$PublicLlmListEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'llm_name') String llmName,
      @JsonKey(name: 'llmmodeltype_name') String llmmodeltypeName,
      DateTime created,
      DateTime modified});
}

/// @nodoc
class __$$PublicLlmListEntityImplCopyWithImpl<$Res>
    extends _$PublicLlmListEntityCopyWithImpl<$Res, _$PublicLlmListEntityImpl>
    implements _$$PublicLlmListEntityImplCopyWith<$Res> {
  __$$PublicLlmListEntityImplCopyWithImpl(_$PublicLlmListEntityImpl _value,
      $Res Function(_$PublicLlmListEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of PublicLlmListEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? llmName = null,
    Object? llmmodeltypeName = null,
    Object? created = null,
    Object? modified = null,
  }) {
    return _then(_$PublicLlmListEntityImpl(
      llmName: null == llmName
          ? _value.llmName
          : llmName // ignore: cast_nullable_to_non_nullable
              as String,
      llmmodeltypeName: null == llmmodeltypeName
          ? _value.llmmodeltypeName
          : llmmodeltypeName // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      modified: null == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PublicLlmListEntityImpl implements _PublicLlmListEntity {
  _$PublicLlmListEntityImpl(
      {@JsonKey(name: 'llm_name') required this.llmName,
      @JsonKey(name: 'llmmodeltype_name') required this.llmmodeltypeName,
      required this.created,
      required this.modified});

  factory _$PublicLlmListEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PublicLlmListEntityImplFromJson(json);

  @override
  @JsonKey(name: 'llm_name')
  final String llmName;
  @override
  @JsonKey(name: 'llmmodeltype_name')
  final String llmmodeltypeName;
  @override
  final DateTime created;
  @override
  final DateTime modified;

  @override
  String toString() {
    return 'PublicLlmListEntity(llmName: $llmName, llmmodeltypeName: $llmmodeltypeName, created: $created, modified: $modified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PublicLlmListEntityImpl &&
            (identical(other.llmName, llmName) || other.llmName == llmName) &&
            (identical(other.llmmodeltypeName, llmmodeltypeName) ||
                other.llmmodeltypeName == llmmodeltypeName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.modified, modified) ||
                other.modified == modified));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, llmName, llmmodeltypeName, created, modified);

  /// Create a copy of PublicLlmListEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PublicLlmListEntityImplCopyWith<_$PublicLlmListEntityImpl> get copyWith =>
      __$$PublicLlmListEntityImplCopyWithImpl<_$PublicLlmListEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PublicLlmListEntityImplToJson(
      this,
    );
  }
}

abstract class _PublicLlmListEntity implements PublicLlmListEntity {
  factory _PublicLlmListEntity(
      {@JsonKey(name: 'llm_name') required final String llmName,
      @JsonKey(name: 'llmmodeltype_name')
      required final String llmmodeltypeName,
      required final DateTime created,
      required final DateTime modified}) = _$PublicLlmListEntityImpl;

  factory _PublicLlmListEntity.fromJson(Map<String, dynamic> json) =
      _$PublicLlmListEntityImpl.fromJson;

  @override
  @JsonKey(name: 'llm_name')
  String get llmName;
  @override
  @JsonKey(name: 'llmmodeltype_name')
  String get llmmodeltypeName;
  @override
  DateTime get created;
  @override
  DateTime get modified;

  /// Create a copy of PublicLlmListEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PublicLlmListEntityImplCopyWith<_$PublicLlmListEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
