// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bot_datasource_change_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BotDatasourceChangeEntity _$BotDatasourceChangeEntityFromJson(
    Map<String, dynamic> json) {
  return _BotDatasourceChangeEntity.fromJson(json);
}

/// @nodoc
mixin _$BotDatasourceChangeEntity {
  @JsonKey(name: 'bot_id')
  int get botId => throw _privateConstructorUsedError;
  @JsonKey(name: 'datasource_id')
  int get datasourceId => throw _privateConstructorUsedError;

  /// Serializes this BotDatasourceChangeEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BotDatasourceChangeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BotDatasourceChangeEntityCopyWith<BotDatasourceChangeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BotDatasourceChangeEntityCopyWith<$Res> {
  factory $BotDatasourceChangeEntityCopyWith(BotDatasourceChangeEntity value,
          $Res Function(BotDatasourceChangeEntity) then) =
      _$BotDatasourceChangeEntityCopyWithImpl<$Res, BotDatasourceChangeEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'bot_id') int botId,
      @JsonKey(name: 'datasource_id') int datasourceId});
}

/// @nodoc
class _$BotDatasourceChangeEntityCopyWithImpl<$Res,
        $Val extends BotDatasourceChangeEntity>
    implements $BotDatasourceChangeEntityCopyWith<$Res> {
  _$BotDatasourceChangeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BotDatasourceChangeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? botId = null,
    Object? datasourceId = null,
  }) {
    return _then(_value.copyWith(
      botId: null == botId
          ? _value.botId
          : botId // ignore: cast_nullable_to_non_nullable
              as int,
      datasourceId: null == datasourceId
          ? _value.datasourceId
          : datasourceId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BotDatasourceChangeEntityImplCopyWith<$Res>
    implements $BotDatasourceChangeEntityCopyWith<$Res> {
  factory _$$BotDatasourceChangeEntityImplCopyWith(
          _$BotDatasourceChangeEntityImpl value,
          $Res Function(_$BotDatasourceChangeEntityImpl) then) =
      __$$BotDatasourceChangeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'bot_id') int botId,
      @JsonKey(name: 'datasource_id') int datasourceId});
}

/// @nodoc
class __$$BotDatasourceChangeEntityImplCopyWithImpl<$Res>
    extends _$BotDatasourceChangeEntityCopyWithImpl<$Res,
        _$BotDatasourceChangeEntityImpl>
    implements _$$BotDatasourceChangeEntityImplCopyWith<$Res> {
  __$$BotDatasourceChangeEntityImplCopyWithImpl(
      _$BotDatasourceChangeEntityImpl _value,
      $Res Function(_$BotDatasourceChangeEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of BotDatasourceChangeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? botId = null,
    Object? datasourceId = null,
  }) {
    return _then(_$BotDatasourceChangeEntityImpl(
      botId: null == botId
          ? _value.botId
          : botId // ignore: cast_nullable_to_non_nullable
              as int,
      datasourceId: null == datasourceId
          ? _value.datasourceId
          : datasourceId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BotDatasourceChangeEntityImpl implements _BotDatasourceChangeEntity {
  _$BotDatasourceChangeEntityImpl(
      {@JsonKey(name: 'bot_id') required this.botId,
      @JsonKey(name: 'datasource_id') required this.datasourceId});

  factory _$BotDatasourceChangeEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$BotDatasourceChangeEntityImplFromJson(json);

  @override
  @JsonKey(name: 'bot_id')
  final int botId;
  @override
  @JsonKey(name: 'datasource_id')
  final int datasourceId;

  @override
  String toString() {
    return 'BotDatasourceChangeEntity(botId: $botId, datasourceId: $datasourceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BotDatasourceChangeEntityImpl &&
            (identical(other.botId, botId) || other.botId == botId) &&
            (identical(other.datasourceId, datasourceId) ||
                other.datasourceId == datasourceId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, botId, datasourceId);

  /// Create a copy of BotDatasourceChangeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BotDatasourceChangeEntityImplCopyWith<_$BotDatasourceChangeEntityImpl>
      get copyWith => __$$BotDatasourceChangeEntityImplCopyWithImpl<
          _$BotDatasourceChangeEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BotDatasourceChangeEntityImplToJson(
      this,
    );
  }
}

abstract class _BotDatasourceChangeEntity implements BotDatasourceChangeEntity {
  factory _BotDatasourceChangeEntity(
          {@JsonKey(name: 'bot_id') required final int botId,
          @JsonKey(name: 'datasource_id') required final int datasourceId}) =
      _$BotDatasourceChangeEntityImpl;

  factory _BotDatasourceChangeEntity.fromJson(Map<String, dynamic> json) =
      _$BotDatasourceChangeEntityImpl.fromJson;

  @override
  @JsonKey(name: 'bot_id')
  int get botId;
  @override
  @JsonKey(name: 'datasource_id')
  int get datasourceId;

  /// Create a copy of BotDatasourceChangeEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BotDatasourceChangeEntityImplCopyWith<_$BotDatasourceChangeEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
