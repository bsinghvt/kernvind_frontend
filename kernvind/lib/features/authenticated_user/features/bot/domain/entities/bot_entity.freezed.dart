// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bot_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BotEntity _$BotEntityFromJson(Map<String, dynamic> json) {
  return _BotEntity.fromJson(json);
}

/// @nodoc
mixin _$BotEntity {
  @JsonKey(name: 'bot_id')
  int? get botId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_llm_id')
  int? get userLlmId => throw _privateConstructorUsedError;
  @JsonKey(name: 'llm_name')
  String? get llmName => throw _privateConstructorUsedError;
  @JsonKey(name: 'llm_type_name')
  String? get llmTypeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_llm_name')
  String? get userLlmName => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_llm_description')
  String? get userLlmDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'bot_name')
  String get botName => throw _privateConstructorUsedError;
  @JsonKey(name: 'bot_description')
  String? get botDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by_user_id')
  int get createdByUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by_name')
  String get createdByName => throw _privateConstructorUsedError;
  @JsonKey(name: 'datasource_id')
  int? get datasourceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'datasource_name')
  String? get datasourceName => throw _privateConstructorUsedError;
  @JsonKey(name: 'datasource_description')
  String? get datasourceDesc => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_owner')
  bool? get isOwner => throw _privateConstructorUsedError;
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
  DateTime? get created => throw _privateConstructorUsedError;
  DateTime? get modified => throw _privateConstructorUsedError;

  /// Serializes this BotEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BotEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BotEntityCopyWith<BotEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BotEntityCopyWith<$Res> {
  factory $BotEntityCopyWith(BotEntity value, $Res Function(BotEntity) then) =
      _$BotEntityCopyWithImpl<$Res, BotEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'bot_id') int? botId,
      @JsonKey(name: 'user_llm_id') int? userLlmId,
      @JsonKey(name: 'llm_name') String? llmName,
      @JsonKey(name: 'llm_type_name') String? llmTypeName,
      @JsonKey(name: 'user_llm_name') String? userLlmName,
      @JsonKey(name: 'user_llm_description') String? userLlmDescription,
      @JsonKey(name: 'bot_name') String botName,
      @JsonKey(name: 'bot_description') String? botDescription,
      @JsonKey(name: 'created_by_user_id') int createdByUserId,
      @JsonKey(name: 'created_by_name') String createdByName,
      @JsonKey(name: 'datasource_id') int? datasourceId,
      @JsonKey(name: 'datasource_name') String? datasourceName,
      @JsonKey(name: 'datasource_description') String? datasourceDesc,
      @JsonKey(name: 'is_owner') bool? isOwner,
      @JsonKey(name: 'can_add_users') bool canAddUsers,
      @JsonKey(name: 'can_change_datasource') bool canChangeDatasource,
      @JsonKey(name: 'can_see_datasource') bool canSeeDatasource,
      @JsonKey(name: 'can_see_datasourcefeed') bool canSeeDatasourcefeed,
      @JsonKey(name: 'can_change_datasourcefeed') bool canChangeDatasourcefeed,
      @JsonKey(name: 'can_see_llm') bool canSeeLlm,
      @JsonKey(name: 'can_change_llm') bool canChangeLlm,
      DateTime? created,
      DateTime? modified});
}

/// @nodoc
class _$BotEntityCopyWithImpl<$Res, $Val extends BotEntity>
    implements $BotEntityCopyWith<$Res> {
  _$BotEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BotEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? botId = freezed,
    Object? userLlmId = freezed,
    Object? llmName = freezed,
    Object? llmTypeName = freezed,
    Object? userLlmName = freezed,
    Object? userLlmDescription = freezed,
    Object? botName = null,
    Object? botDescription = freezed,
    Object? createdByUserId = null,
    Object? createdByName = null,
    Object? datasourceId = freezed,
    Object? datasourceName = freezed,
    Object? datasourceDesc = freezed,
    Object? isOwner = freezed,
    Object? canAddUsers = null,
    Object? canChangeDatasource = null,
    Object? canSeeDatasource = null,
    Object? canSeeDatasourcefeed = null,
    Object? canChangeDatasourcefeed = null,
    Object? canSeeLlm = null,
    Object? canChangeLlm = null,
    Object? created = freezed,
    Object? modified = freezed,
  }) {
    return _then(_value.copyWith(
      botId: freezed == botId
          ? _value.botId
          : botId // ignore: cast_nullable_to_non_nullable
              as int?,
      userLlmId: freezed == userLlmId
          ? _value.userLlmId
          : userLlmId // ignore: cast_nullable_to_non_nullable
              as int?,
      llmName: freezed == llmName
          ? _value.llmName
          : llmName // ignore: cast_nullable_to_non_nullable
              as String?,
      llmTypeName: freezed == llmTypeName
          ? _value.llmTypeName
          : llmTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      userLlmName: freezed == userLlmName
          ? _value.userLlmName
          : userLlmName // ignore: cast_nullable_to_non_nullable
              as String?,
      userLlmDescription: freezed == userLlmDescription
          ? _value.userLlmDescription
          : userLlmDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      botName: null == botName
          ? _value.botName
          : botName // ignore: cast_nullable_to_non_nullable
              as String,
      botDescription: freezed == botDescription
          ? _value.botDescription
          : botDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      createdByUserId: null == createdByUserId
          ? _value.createdByUserId
          : createdByUserId // ignore: cast_nullable_to_non_nullable
              as int,
      createdByName: null == createdByName
          ? _value.createdByName
          : createdByName // ignore: cast_nullable_to_non_nullable
              as String,
      datasourceId: freezed == datasourceId
          ? _value.datasourceId
          : datasourceId // ignore: cast_nullable_to_non_nullable
              as int?,
      datasourceName: freezed == datasourceName
          ? _value.datasourceName
          : datasourceName // ignore: cast_nullable_to_non_nullable
              as String?,
      datasourceDesc: freezed == datasourceDesc
          ? _value.datasourceDesc
          : datasourceDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      isOwner: freezed == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      modified: freezed == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BotEntityImplCopyWith<$Res>
    implements $BotEntityCopyWith<$Res> {
  factory _$$BotEntityImplCopyWith(
          _$BotEntityImpl value, $Res Function(_$BotEntityImpl) then) =
      __$$BotEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'bot_id') int? botId,
      @JsonKey(name: 'user_llm_id') int? userLlmId,
      @JsonKey(name: 'llm_name') String? llmName,
      @JsonKey(name: 'llm_type_name') String? llmTypeName,
      @JsonKey(name: 'user_llm_name') String? userLlmName,
      @JsonKey(name: 'user_llm_description') String? userLlmDescription,
      @JsonKey(name: 'bot_name') String botName,
      @JsonKey(name: 'bot_description') String? botDescription,
      @JsonKey(name: 'created_by_user_id') int createdByUserId,
      @JsonKey(name: 'created_by_name') String createdByName,
      @JsonKey(name: 'datasource_id') int? datasourceId,
      @JsonKey(name: 'datasource_name') String? datasourceName,
      @JsonKey(name: 'datasource_description') String? datasourceDesc,
      @JsonKey(name: 'is_owner') bool? isOwner,
      @JsonKey(name: 'can_add_users') bool canAddUsers,
      @JsonKey(name: 'can_change_datasource') bool canChangeDatasource,
      @JsonKey(name: 'can_see_datasource') bool canSeeDatasource,
      @JsonKey(name: 'can_see_datasourcefeed') bool canSeeDatasourcefeed,
      @JsonKey(name: 'can_change_datasourcefeed') bool canChangeDatasourcefeed,
      @JsonKey(name: 'can_see_llm') bool canSeeLlm,
      @JsonKey(name: 'can_change_llm') bool canChangeLlm,
      DateTime? created,
      DateTime? modified});
}

/// @nodoc
class __$$BotEntityImplCopyWithImpl<$Res>
    extends _$BotEntityCopyWithImpl<$Res, _$BotEntityImpl>
    implements _$$BotEntityImplCopyWith<$Res> {
  __$$BotEntityImplCopyWithImpl(
      _$BotEntityImpl _value, $Res Function(_$BotEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of BotEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? botId = freezed,
    Object? userLlmId = freezed,
    Object? llmName = freezed,
    Object? llmTypeName = freezed,
    Object? userLlmName = freezed,
    Object? userLlmDescription = freezed,
    Object? botName = null,
    Object? botDescription = freezed,
    Object? createdByUserId = null,
    Object? createdByName = null,
    Object? datasourceId = freezed,
    Object? datasourceName = freezed,
    Object? datasourceDesc = freezed,
    Object? isOwner = freezed,
    Object? canAddUsers = null,
    Object? canChangeDatasource = null,
    Object? canSeeDatasource = null,
    Object? canSeeDatasourcefeed = null,
    Object? canChangeDatasourcefeed = null,
    Object? canSeeLlm = null,
    Object? canChangeLlm = null,
    Object? created = freezed,
    Object? modified = freezed,
  }) {
    return _then(_$BotEntityImpl(
      botId: freezed == botId
          ? _value.botId
          : botId // ignore: cast_nullable_to_non_nullable
              as int?,
      userLlmId: freezed == userLlmId
          ? _value.userLlmId
          : userLlmId // ignore: cast_nullable_to_non_nullable
              as int?,
      llmName: freezed == llmName
          ? _value.llmName
          : llmName // ignore: cast_nullable_to_non_nullable
              as String?,
      llmTypeName: freezed == llmTypeName
          ? _value.llmTypeName
          : llmTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      userLlmName: freezed == userLlmName
          ? _value.userLlmName
          : userLlmName // ignore: cast_nullable_to_non_nullable
              as String?,
      userLlmDescription: freezed == userLlmDescription
          ? _value.userLlmDescription
          : userLlmDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      botName: null == botName
          ? _value.botName
          : botName // ignore: cast_nullable_to_non_nullable
              as String,
      botDescription: freezed == botDescription
          ? _value.botDescription
          : botDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      createdByUserId: null == createdByUserId
          ? _value.createdByUserId
          : createdByUserId // ignore: cast_nullable_to_non_nullable
              as int,
      createdByName: null == createdByName
          ? _value.createdByName
          : createdByName // ignore: cast_nullable_to_non_nullable
              as String,
      datasourceId: freezed == datasourceId
          ? _value.datasourceId
          : datasourceId // ignore: cast_nullable_to_non_nullable
              as int?,
      datasourceName: freezed == datasourceName
          ? _value.datasourceName
          : datasourceName // ignore: cast_nullable_to_non_nullable
              as String?,
      datasourceDesc: freezed == datasourceDesc
          ? _value.datasourceDesc
          : datasourceDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      isOwner: freezed == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      modified: freezed == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BotEntityImpl implements _BotEntity {
  _$BotEntityImpl(
      {@JsonKey(name: 'bot_id') this.botId,
      @JsonKey(name: 'user_llm_id') this.userLlmId,
      @JsonKey(name: 'llm_name') this.llmName,
      @JsonKey(name: 'llm_type_name') this.llmTypeName,
      @JsonKey(name: 'user_llm_name') this.userLlmName,
      @JsonKey(name: 'user_llm_description') this.userLlmDescription,
      @JsonKey(name: 'bot_name') required this.botName,
      @JsonKey(name: 'bot_description') this.botDescription,
      @JsonKey(name: 'created_by_user_id') required this.createdByUserId,
      @JsonKey(name: 'created_by_name') required this.createdByName,
      @JsonKey(name: 'datasource_id') this.datasourceId,
      @JsonKey(name: 'datasource_name') this.datasourceName,
      @JsonKey(name: 'datasource_description') this.datasourceDesc,
      @JsonKey(name: 'is_owner') this.isOwner,
      @JsonKey(name: 'can_add_users') required this.canAddUsers,
      @JsonKey(name: 'can_change_datasource') required this.canChangeDatasource,
      @JsonKey(name: 'can_see_datasource') required this.canSeeDatasource,
      @JsonKey(name: 'can_see_datasourcefeed')
      required this.canSeeDatasourcefeed,
      @JsonKey(name: 'can_change_datasourcefeed')
      required this.canChangeDatasourcefeed,
      @JsonKey(name: 'can_see_llm') required this.canSeeLlm,
      @JsonKey(name: 'can_change_llm') required this.canChangeLlm,
      this.created,
      this.modified});

  factory _$BotEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$BotEntityImplFromJson(json);

  @override
  @JsonKey(name: 'bot_id')
  final int? botId;
  @override
  @JsonKey(name: 'user_llm_id')
  final int? userLlmId;
  @override
  @JsonKey(name: 'llm_name')
  final String? llmName;
  @override
  @JsonKey(name: 'llm_type_name')
  final String? llmTypeName;
  @override
  @JsonKey(name: 'user_llm_name')
  final String? userLlmName;
  @override
  @JsonKey(name: 'user_llm_description')
  final String? userLlmDescription;
  @override
  @JsonKey(name: 'bot_name')
  final String botName;
  @override
  @JsonKey(name: 'bot_description')
  final String? botDescription;
  @override
  @JsonKey(name: 'created_by_user_id')
  final int createdByUserId;
  @override
  @JsonKey(name: 'created_by_name')
  final String createdByName;
  @override
  @JsonKey(name: 'datasource_id')
  final int? datasourceId;
  @override
  @JsonKey(name: 'datasource_name')
  final String? datasourceName;
  @override
  @JsonKey(name: 'datasource_description')
  final String? datasourceDesc;
  @override
  @JsonKey(name: 'is_owner')
  final bool? isOwner;
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
  final DateTime? created;
  @override
  final DateTime? modified;

  @override
  String toString() {
    return 'BotEntity(botId: $botId, userLlmId: $userLlmId, llmName: $llmName, llmTypeName: $llmTypeName, userLlmName: $userLlmName, userLlmDescription: $userLlmDescription, botName: $botName, botDescription: $botDescription, createdByUserId: $createdByUserId, createdByName: $createdByName, datasourceId: $datasourceId, datasourceName: $datasourceName, datasourceDesc: $datasourceDesc, isOwner: $isOwner, canAddUsers: $canAddUsers, canChangeDatasource: $canChangeDatasource, canSeeDatasource: $canSeeDatasource, canSeeDatasourcefeed: $canSeeDatasourcefeed, canChangeDatasourcefeed: $canChangeDatasourcefeed, canSeeLlm: $canSeeLlm, canChangeLlm: $canChangeLlm, created: $created, modified: $modified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BotEntityImpl &&
            (identical(other.botId, botId) || other.botId == botId) &&
            (identical(other.userLlmId, userLlmId) ||
                other.userLlmId == userLlmId) &&
            (identical(other.llmName, llmName) || other.llmName == llmName) &&
            (identical(other.llmTypeName, llmTypeName) ||
                other.llmTypeName == llmTypeName) &&
            (identical(other.userLlmName, userLlmName) ||
                other.userLlmName == userLlmName) &&
            (identical(other.userLlmDescription, userLlmDescription) ||
                other.userLlmDescription == userLlmDescription) &&
            (identical(other.botName, botName) || other.botName == botName) &&
            (identical(other.botDescription, botDescription) ||
                other.botDescription == botDescription) &&
            (identical(other.createdByUserId, createdByUserId) ||
                other.createdByUserId == createdByUserId) &&
            (identical(other.createdByName, createdByName) ||
                other.createdByName == createdByName) &&
            (identical(other.datasourceId, datasourceId) ||
                other.datasourceId == datasourceId) &&
            (identical(other.datasourceName, datasourceName) ||
                other.datasourceName == datasourceName) &&
            (identical(other.datasourceDesc, datasourceDesc) ||
                other.datasourceDesc == datasourceDesc) &&
            (identical(other.isOwner, isOwner) || other.isOwner == isOwner) &&
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
                other.canChangeLlm == canChangeLlm) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.modified, modified) ||
                other.modified == modified));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        botId,
        userLlmId,
        llmName,
        llmTypeName,
        userLlmName,
        userLlmDescription,
        botName,
        botDescription,
        createdByUserId,
        createdByName,
        datasourceId,
        datasourceName,
        datasourceDesc,
        isOwner,
        canAddUsers,
        canChangeDatasource,
        canSeeDatasource,
        canSeeDatasourcefeed,
        canChangeDatasourcefeed,
        canSeeLlm,
        canChangeLlm,
        created,
        modified
      ]);

  /// Create a copy of BotEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BotEntityImplCopyWith<_$BotEntityImpl> get copyWith =>
      __$$BotEntityImplCopyWithImpl<_$BotEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BotEntityImplToJson(
      this,
    );
  }
}

abstract class _BotEntity implements BotEntity {
  factory _BotEntity(
      {@JsonKey(name: 'bot_id') final int? botId,
      @JsonKey(name: 'user_llm_id') final int? userLlmId,
      @JsonKey(name: 'llm_name') final String? llmName,
      @JsonKey(name: 'llm_type_name') final String? llmTypeName,
      @JsonKey(name: 'user_llm_name') final String? userLlmName,
      @JsonKey(name: 'user_llm_description') final String? userLlmDescription,
      @JsonKey(name: 'bot_name') required final String botName,
      @JsonKey(name: 'bot_description') final String? botDescription,
      @JsonKey(name: 'created_by_user_id') required final int createdByUserId,
      @JsonKey(name: 'created_by_name') required final String createdByName,
      @JsonKey(name: 'datasource_id') final int? datasourceId,
      @JsonKey(name: 'datasource_name') final String? datasourceName,
      @JsonKey(name: 'datasource_description') final String? datasourceDesc,
      @JsonKey(name: 'is_owner') final bool? isOwner,
      @JsonKey(name: 'can_add_users') required final bool canAddUsers,
      @JsonKey(name: 'can_change_datasource')
      required final bool canChangeDatasource,
      @JsonKey(name: 'can_see_datasource') required final bool canSeeDatasource,
      @JsonKey(name: 'can_see_datasourcefeed')
      required final bool canSeeDatasourcefeed,
      @JsonKey(name: 'can_change_datasourcefeed')
      required final bool canChangeDatasourcefeed,
      @JsonKey(name: 'can_see_llm') required final bool canSeeLlm,
      @JsonKey(name: 'can_change_llm') required final bool canChangeLlm,
      final DateTime? created,
      final DateTime? modified}) = _$BotEntityImpl;

  factory _BotEntity.fromJson(Map<String, dynamic> json) =
      _$BotEntityImpl.fromJson;

  @override
  @JsonKey(name: 'bot_id')
  int? get botId;
  @override
  @JsonKey(name: 'user_llm_id')
  int? get userLlmId;
  @override
  @JsonKey(name: 'llm_name')
  String? get llmName;
  @override
  @JsonKey(name: 'llm_type_name')
  String? get llmTypeName;
  @override
  @JsonKey(name: 'user_llm_name')
  String? get userLlmName;
  @override
  @JsonKey(name: 'user_llm_description')
  String? get userLlmDescription;
  @override
  @JsonKey(name: 'bot_name')
  String get botName;
  @override
  @JsonKey(name: 'bot_description')
  String? get botDescription;
  @override
  @JsonKey(name: 'created_by_user_id')
  int get createdByUserId;
  @override
  @JsonKey(name: 'created_by_name')
  String get createdByName;
  @override
  @JsonKey(name: 'datasource_id')
  int? get datasourceId;
  @override
  @JsonKey(name: 'datasource_name')
  String? get datasourceName;
  @override
  @JsonKey(name: 'datasource_description')
  String? get datasourceDesc;
  @override
  @JsonKey(name: 'is_owner')
  bool? get isOwner;
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
  @override
  DateTime? get created;
  @override
  DateTime? get modified;

  /// Create a copy of BotEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BotEntityImplCopyWith<_$BotEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
