// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'datasource_details_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DatasourceDetailsEntity _$DatasourceDetailsEntityFromJson(
    Map<String, dynamic> json) {
  return _DatasourceDetailsEntity.fromJson(json);
}

/// @nodoc
mixin _$DatasourceDetailsEntity {
  DatasourceListEntity get datasource => throw _privateConstructorUsedError;
  List<DatasourceFeedEntity> get datafeeds =>
      throw _privateConstructorUsedError;

  /// Serializes this DatasourceDetailsEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DatasourceDetailsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DatasourceDetailsEntityCopyWith<DatasourceDetailsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatasourceDetailsEntityCopyWith<$Res> {
  factory $DatasourceDetailsEntityCopyWith(DatasourceDetailsEntity value,
          $Res Function(DatasourceDetailsEntity) then) =
      _$DatasourceDetailsEntityCopyWithImpl<$Res, DatasourceDetailsEntity>;
  @useResult
  $Res call(
      {DatasourceListEntity datasource, List<DatasourceFeedEntity> datafeeds});

  $DatasourceListEntityCopyWith<$Res> get datasource;
}

/// @nodoc
class _$DatasourceDetailsEntityCopyWithImpl<$Res,
        $Val extends DatasourceDetailsEntity>
    implements $DatasourceDetailsEntityCopyWith<$Res> {
  _$DatasourceDetailsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DatasourceDetailsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datasource = null,
    Object? datafeeds = null,
  }) {
    return _then(_value.copyWith(
      datasource: null == datasource
          ? _value.datasource
          : datasource // ignore: cast_nullable_to_non_nullable
              as DatasourceListEntity,
      datafeeds: null == datafeeds
          ? _value.datafeeds
          : datafeeds // ignore: cast_nullable_to_non_nullable
              as List<DatasourceFeedEntity>,
    ) as $Val);
  }

  /// Create a copy of DatasourceDetailsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DatasourceListEntityCopyWith<$Res> get datasource {
    return $DatasourceListEntityCopyWith<$Res>(_value.datasource, (value) {
      return _then(_value.copyWith(datasource: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DatasourceDetailsEntityImplCopyWith<$Res>
    implements $DatasourceDetailsEntityCopyWith<$Res> {
  factory _$$DatasourceDetailsEntityImplCopyWith(
          _$DatasourceDetailsEntityImpl value,
          $Res Function(_$DatasourceDetailsEntityImpl) then) =
      __$$DatasourceDetailsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DatasourceListEntity datasource, List<DatasourceFeedEntity> datafeeds});

  @override
  $DatasourceListEntityCopyWith<$Res> get datasource;
}

/// @nodoc
class __$$DatasourceDetailsEntityImplCopyWithImpl<$Res>
    extends _$DatasourceDetailsEntityCopyWithImpl<$Res,
        _$DatasourceDetailsEntityImpl>
    implements _$$DatasourceDetailsEntityImplCopyWith<$Res> {
  __$$DatasourceDetailsEntityImplCopyWithImpl(
      _$DatasourceDetailsEntityImpl _value,
      $Res Function(_$DatasourceDetailsEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatasourceDetailsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datasource = null,
    Object? datafeeds = null,
  }) {
    return _then(_$DatasourceDetailsEntityImpl(
      datasource: null == datasource
          ? _value.datasource
          : datasource // ignore: cast_nullable_to_non_nullable
              as DatasourceListEntity,
      datafeeds: null == datafeeds
          ? _value._datafeeds
          : datafeeds // ignore: cast_nullable_to_non_nullable
              as List<DatasourceFeedEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatasourceDetailsEntityImpl implements _DatasourceDetailsEntity {
  _$DatasourceDetailsEntityImpl(
      {required this.datasource,
      required final List<DatasourceFeedEntity> datafeeds})
      : _datafeeds = datafeeds;

  factory _$DatasourceDetailsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatasourceDetailsEntityImplFromJson(json);

  @override
  final DatasourceListEntity datasource;
  final List<DatasourceFeedEntity> _datafeeds;
  @override
  List<DatasourceFeedEntity> get datafeeds {
    if (_datafeeds is EqualUnmodifiableListView) return _datafeeds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_datafeeds);
  }

  @override
  String toString() {
    return 'DatasourceDetailsEntity(datasource: $datasource, datafeeds: $datafeeds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatasourceDetailsEntityImpl &&
            (identical(other.datasource, datasource) ||
                other.datasource == datasource) &&
            const DeepCollectionEquality()
                .equals(other._datafeeds, _datafeeds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, datasource, const DeepCollectionEquality().hash(_datafeeds));

  /// Create a copy of DatasourceDetailsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DatasourceDetailsEntityImplCopyWith<_$DatasourceDetailsEntityImpl>
      get copyWith => __$$DatasourceDetailsEntityImplCopyWithImpl<
          _$DatasourceDetailsEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatasourceDetailsEntityImplToJson(
      this,
    );
  }
}

abstract class _DatasourceDetailsEntity implements DatasourceDetailsEntity {
  factory _DatasourceDetailsEntity(
          {required final DatasourceListEntity datasource,
          required final List<DatasourceFeedEntity> datafeeds}) =
      _$DatasourceDetailsEntityImpl;

  factory _DatasourceDetailsEntity.fromJson(Map<String, dynamic> json) =
      _$DatasourceDetailsEntityImpl.fromJson;

  @override
  DatasourceListEntity get datasource;
  @override
  List<DatasourceFeedEntity> get datafeeds;

  /// Create a copy of DatasourceDetailsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DatasourceDetailsEntityImplCopyWith<_$DatasourceDetailsEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
