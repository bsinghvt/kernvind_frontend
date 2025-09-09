// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playground_chat_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlaygroundChatEntity _$PlaygroundChatEntityFromJson(Map<String, dynamic> json) {
  return _PlaygroundChatEntity.fromJson(json);
}

/// @nodoc
mixin _$PlaygroundChatEntity {
  @JsonKey(name: 'bot_id')
  String get botId => throw _privateConstructorUsedError;
  @JsonKey(name: 'message_text')
  String get messageText => throw _privateConstructorUsedError;
  @JsonKey(name: 'message_id')
  String? get messageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'message_user_name')
  String? get messageUserName => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_message')
  bool? get firstMessage => throw _privateConstructorUsedError;
  @JsonKey(name: 'llm_config')
  PlaygroundLlmConfigEntity? get llmConfig =>
      throw _privateConstructorUsedError;
  DateTime? get created => throw _privateConstructorUsedError;
  DateTime? get modified => throw _privateConstructorUsedError;

  /// Serializes this PlaygroundChatEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlaygroundChatEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlaygroundChatEntityCopyWith<PlaygroundChatEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaygroundChatEntityCopyWith<$Res> {
  factory $PlaygroundChatEntityCopyWith(PlaygroundChatEntity value,
          $Res Function(PlaygroundChatEntity) then) =
      _$PlaygroundChatEntityCopyWithImpl<$Res, PlaygroundChatEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'bot_id') String botId,
      @JsonKey(name: 'message_text') String messageText,
      @JsonKey(name: 'message_id') String? messageId,
      @JsonKey(name: 'message_user_name') String? messageUserName,
      @JsonKey(name: 'first_message') bool? firstMessage,
      @JsonKey(name: 'llm_config') PlaygroundLlmConfigEntity? llmConfig,
      DateTime? created,
      DateTime? modified});

  $PlaygroundLlmConfigEntityCopyWith<$Res>? get llmConfig;
}

/// @nodoc
class _$PlaygroundChatEntityCopyWithImpl<$Res,
        $Val extends PlaygroundChatEntity>
    implements $PlaygroundChatEntityCopyWith<$Res> {
  _$PlaygroundChatEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlaygroundChatEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? botId = null,
    Object? messageText = null,
    Object? messageId = freezed,
    Object? messageUserName = freezed,
    Object? firstMessage = freezed,
    Object? llmConfig = freezed,
    Object? created = freezed,
    Object? modified = freezed,
  }) {
    return _then(_value.copyWith(
      botId: null == botId
          ? _value.botId
          : botId // ignore: cast_nullable_to_non_nullable
              as String,
      messageText: null == messageText
          ? _value.messageText
          : messageText // ignore: cast_nullable_to_non_nullable
              as String,
      messageId: freezed == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String?,
      messageUserName: freezed == messageUserName
          ? _value.messageUserName
          : messageUserName // ignore: cast_nullable_to_non_nullable
              as String?,
      firstMessage: freezed == firstMessage
          ? _value.firstMessage
          : firstMessage // ignore: cast_nullable_to_non_nullable
              as bool?,
      llmConfig: freezed == llmConfig
          ? _value.llmConfig
          : llmConfig // ignore: cast_nullable_to_non_nullable
              as PlaygroundLlmConfigEntity?,
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

  /// Create a copy of PlaygroundChatEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlaygroundLlmConfigEntityCopyWith<$Res>? get llmConfig {
    if (_value.llmConfig == null) {
      return null;
    }

    return $PlaygroundLlmConfigEntityCopyWith<$Res>(_value.llmConfig!, (value) {
      return _then(_value.copyWith(llmConfig: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlaygroundChatEntityImplCopyWith<$Res>
    implements $PlaygroundChatEntityCopyWith<$Res> {
  factory _$$PlaygroundChatEntityImplCopyWith(_$PlaygroundChatEntityImpl value,
          $Res Function(_$PlaygroundChatEntityImpl) then) =
      __$$PlaygroundChatEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'bot_id') String botId,
      @JsonKey(name: 'message_text') String messageText,
      @JsonKey(name: 'message_id') String? messageId,
      @JsonKey(name: 'message_user_name') String? messageUserName,
      @JsonKey(name: 'first_message') bool? firstMessage,
      @JsonKey(name: 'llm_config') PlaygroundLlmConfigEntity? llmConfig,
      DateTime? created,
      DateTime? modified});

  @override
  $PlaygroundLlmConfigEntityCopyWith<$Res>? get llmConfig;
}

/// @nodoc
class __$$PlaygroundChatEntityImplCopyWithImpl<$Res>
    extends _$PlaygroundChatEntityCopyWithImpl<$Res, _$PlaygroundChatEntityImpl>
    implements _$$PlaygroundChatEntityImplCopyWith<$Res> {
  __$$PlaygroundChatEntityImplCopyWithImpl(_$PlaygroundChatEntityImpl _value,
      $Res Function(_$PlaygroundChatEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlaygroundChatEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? botId = null,
    Object? messageText = null,
    Object? messageId = freezed,
    Object? messageUserName = freezed,
    Object? firstMessage = freezed,
    Object? llmConfig = freezed,
    Object? created = freezed,
    Object? modified = freezed,
  }) {
    return _then(_$PlaygroundChatEntityImpl(
      botId: null == botId
          ? _value.botId
          : botId // ignore: cast_nullable_to_non_nullable
              as String,
      messageText: null == messageText
          ? _value.messageText
          : messageText // ignore: cast_nullable_to_non_nullable
              as String,
      messageId: freezed == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String?,
      messageUserName: freezed == messageUserName
          ? _value.messageUserName
          : messageUserName // ignore: cast_nullable_to_non_nullable
              as String?,
      firstMessage: freezed == firstMessage
          ? _value.firstMessage
          : firstMessage // ignore: cast_nullable_to_non_nullable
              as bool?,
      llmConfig: freezed == llmConfig
          ? _value.llmConfig
          : llmConfig // ignore: cast_nullable_to_non_nullable
              as PlaygroundLlmConfigEntity?,
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

@JsonSerializable(explicitToJson: true)
class _$PlaygroundChatEntityImpl implements _PlaygroundChatEntity {
  _$PlaygroundChatEntityImpl(
      {@JsonKey(name: 'bot_id') required this.botId,
      @JsonKey(name: 'message_text') required this.messageText,
      @JsonKey(name: 'message_id') this.messageId,
      @JsonKey(name: 'message_user_name') this.messageUserName,
      @JsonKey(name: 'first_message') this.firstMessage,
      @JsonKey(name: 'llm_config') this.llmConfig,
      this.created,
      this.modified});

  factory _$PlaygroundChatEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaygroundChatEntityImplFromJson(json);

  @override
  @JsonKey(name: 'bot_id')
  final String botId;
  @override
  @JsonKey(name: 'message_text')
  final String messageText;
  @override
  @JsonKey(name: 'message_id')
  final String? messageId;
  @override
  @JsonKey(name: 'message_user_name')
  final String? messageUserName;
  @override
  @JsonKey(name: 'first_message')
  final bool? firstMessage;
  @override
  @JsonKey(name: 'llm_config')
  final PlaygroundLlmConfigEntity? llmConfig;
  @override
  final DateTime? created;
  @override
  final DateTime? modified;

  @override
  String toString() {
    return 'PlaygroundChatEntity(botId: $botId, messageText: $messageText, messageId: $messageId, messageUserName: $messageUserName, firstMessage: $firstMessage, llmConfig: $llmConfig, created: $created, modified: $modified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaygroundChatEntityImpl &&
            (identical(other.botId, botId) || other.botId == botId) &&
            (identical(other.messageText, messageText) ||
                other.messageText == messageText) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.messageUserName, messageUserName) ||
                other.messageUserName == messageUserName) &&
            (identical(other.firstMessage, firstMessage) ||
                other.firstMessage == firstMessage) &&
            (identical(other.llmConfig, llmConfig) ||
                other.llmConfig == llmConfig) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.modified, modified) ||
                other.modified == modified));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, botId, messageText, messageId,
      messageUserName, firstMessage, llmConfig, created, modified);

  /// Create a copy of PlaygroundChatEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaygroundChatEntityImplCopyWith<_$PlaygroundChatEntityImpl>
      get copyWith =>
          __$$PlaygroundChatEntityImplCopyWithImpl<_$PlaygroundChatEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaygroundChatEntityImplToJson(
      this,
    );
  }
}

abstract class _PlaygroundChatEntity implements PlaygroundChatEntity {
  factory _PlaygroundChatEntity(
      {@JsonKey(name: 'bot_id') required final String botId,
      @JsonKey(name: 'message_text') required final String messageText,
      @JsonKey(name: 'message_id') final String? messageId,
      @JsonKey(name: 'message_user_name') final String? messageUserName,
      @JsonKey(name: 'first_message') final bool? firstMessage,
      @JsonKey(name: 'llm_config') final PlaygroundLlmConfigEntity? llmConfig,
      final DateTime? created,
      final DateTime? modified}) = _$PlaygroundChatEntityImpl;

  factory _PlaygroundChatEntity.fromJson(Map<String, dynamic> json) =
      _$PlaygroundChatEntityImpl.fromJson;

  @override
  @JsonKey(name: 'bot_id')
  String get botId;
  @override
  @JsonKey(name: 'message_text')
  String get messageText;
  @override
  @JsonKey(name: 'message_id')
  String? get messageId;
  @override
  @JsonKey(name: 'message_user_name')
  String? get messageUserName;
  @override
  @JsonKey(name: 'first_message')
  bool? get firstMessage;
  @override
  @JsonKey(name: 'llm_config')
  PlaygroundLlmConfigEntity? get llmConfig;
  @override
  DateTime? get created;
  @override
  DateTime? get modified;

  /// Create a copy of PlaygroundChatEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaygroundChatEntityImplCopyWith<_$PlaygroundChatEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
