// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bot_chat_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BotChatEntity _$BotChatEntityFromJson(Map<String, dynamic> json) {
  return _BotChatEntity.fromJson(json);
}

/// @nodoc
mixin _$BotChatEntity {
  @JsonKey(name: 'chat_message_id')
  int? get chatMessageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'bot_id')
  int get botId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id_in')
  int get userIdIn => throw _privateConstructorUsedError;
  @JsonKey(name: 'message_text')
  String get messageText => throw _privateConstructorUsedError;
  @JsonKey(name: 'message_id')
  String? get messageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'message_user_name')
  String? get messageUserName => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id_out')
  int? get userIdOut => throw _privateConstructorUsedError;
  @JsonKey(name: 'notification')
  bool? get notification => throw _privateConstructorUsedError;
  DateTime? get created => throw _privateConstructorUsedError;
  DateTime? get modified => throw _privateConstructorUsedError;

  /// Serializes this BotChatEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BotChatEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BotChatEntityCopyWith<BotChatEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BotChatEntityCopyWith<$Res> {
  factory $BotChatEntityCopyWith(
          BotChatEntity value, $Res Function(BotChatEntity) then) =
      _$BotChatEntityCopyWithImpl<$Res, BotChatEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'chat_message_id') int? chatMessageId,
      @JsonKey(name: 'bot_id') int botId,
      @JsonKey(name: 'user_id_in') int userIdIn,
      @JsonKey(name: 'message_text') String messageText,
      @JsonKey(name: 'message_id') String? messageId,
      @JsonKey(name: 'message_user_name') String? messageUserName,
      @JsonKey(name: 'user_id_out') int? userIdOut,
      @JsonKey(name: 'notification') bool? notification,
      DateTime? created,
      DateTime? modified});
}

/// @nodoc
class _$BotChatEntityCopyWithImpl<$Res, $Val extends BotChatEntity>
    implements $BotChatEntityCopyWith<$Res> {
  _$BotChatEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BotChatEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatMessageId = freezed,
    Object? botId = null,
    Object? userIdIn = null,
    Object? messageText = null,
    Object? messageId = freezed,
    Object? messageUserName = freezed,
    Object? userIdOut = freezed,
    Object? notification = freezed,
    Object? created = freezed,
    Object? modified = freezed,
  }) {
    return _then(_value.copyWith(
      chatMessageId: freezed == chatMessageId
          ? _value.chatMessageId
          : chatMessageId // ignore: cast_nullable_to_non_nullable
              as int?,
      botId: null == botId
          ? _value.botId
          : botId // ignore: cast_nullable_to_non_nullable
              as int,
      userIdIn: null == userIdIn
          ? _value.userIdIn
          : userIdIn // ignore: cast_nullable_to_non_nullable
              as int,
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
      userIdOut: freezed == userIdOut
          ? _value.userIdOut
          : userIdOut // ignore: cast_nullable_to_non_nullable
              as int?,
      notification: freezed == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as bool?,
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
abstract class _$$BotChatEntityImplCopyWith<$Res>
    implements $BotChatEntityCopyWith<$Res> {
  factory _$$BotChatEntityImplCopyWith(
          _$BotChatEntityImpl value, $Res Function(_$BotChatEntityImpl) then) =
      __$$BotChatEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'chat_message_id') int? chatMessageId,
      @JsonKey(name: 'bot_id') int botId,
      @JsonKey(name: 'user_id_in') int userIdIn,
      @JsonKey(name: 'message_text') String messageText,
      @JsonKey(name: 'message_id') String? messageId,
      @JsonKey(name: 'message_user_name') String? messageUserName,
      @JsonKey(name: 'user_id_out') int? userIdOut,
      @JsonKey(name: 'notification') bool? notification,
      DateTime? created,
      DateTime? modified});
}

/// @nodoc
class __$$BotChatEntityImplCopyWithImpl<$Res>
    extends _$BotChatEntityCopyWithImpl<$Res, _$BotChatEntityImpl>
    implements _$$BotChatEntityImplCopyWith<$Res> {
  __$$BotChatEntityImplCopyWithImpl(
      _$BotChatEntityImpl _value, $Res Function(_$BotChatEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of BotChatEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatMessageId = freezed,
    Object? botId = null,
    Object? userIdIn = null,
    Object? messageText = null,
    Object? messageId = freezed,
    Object? messageUserName = freezed,
    Object? userIdOut = freezed,
    Object? notification = freezed,
    Object? created = freezed,
    Object? modified = freezed,
  }) {
    return _then(_$BotChatEntityImpl(
      chatMessageId: freezed == chatMessageId
          ? _value.chatMessageId
          : chatMessageId // ignore: cast_nullable_to_non_nullable
              as int?,
      botId: null == botId
          ? _value.botId
          : botId // ignore: cast_nullable_to_non_nullable
              as int,
      userIdIn: null == userIdIn
          ? _value.userIdIn
          : userIdIn // ignore: cast_nullable_to_non_nullable
              as int,
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
      userIdOut: freezed == userIdOut
          ? _value.userIdOut
          : userIdOut // ignore: cast_nullable_to_non_nullable
              as int?,
      notification: freezed == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as bool?,
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
class _$BotChatEntityImpl implements _BotChatEntity {
  _$BotChatEntityImpl(
      {@JsonKey(name: 'chat_message_id') this.chatMessageId,
      @JsonKey(name: 'bot_id') required this.botId,
      @JsonKey(name: 'user_id_in') required this.userIdIn,
      @JsonKey(name: 'message_text') required this.messageText,
      @JsonKey(name: 'message_id') this.messageId,
      @JsonKey(name: 'message_user_name') this.messageUserName,
      @JsonKey(name: 'user_id_out') this.userIdOut,
      @JsonKey(name: 'notification') this.notification,
      this.created,
      this.modified});

  factory _$BotChatEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$BotChatEntityImplFromJson(json);

  @override
  @JsonKey(name: 'chat_message_id')
  final int? chatMessageId;
  @override
  @JsonKey(name: 'bot_id')
  final int botId;
  @override
  @JsonKey(name: 'user_id_in')
  final int userIdIn;
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
  @JsonKey(name: 'user_id_out')
  final int? userIdOut;
  @override
  @JsonKey(name: 'notification')
  final bool? notification;
  @override
  final DateTime? created;
  @override
  final DateTime? modified;

  @override
  String toString() {
    return 'BotChatEntity(chatMessageId: $chatMessageId, botId: $botId, userIdIn: $userIdIn, messageText: $messageText, messageId: $messageId, messageUserName: $messageUserName, userIdOut: $userIdOut, notification: $notification, created: $created, modified: $modified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BotChatEntityImpl &&
            (identical(other.chatMessageId, chatMessageId) ||
                other.chatMessageId == chatMessageId) &&
            (identical(other.botId, botId) || other.botId == botId) &&
            (identical(other.userIdIn, userIdIn) ||
                other.userIdIn == userIdIn) &&
            (identical(other.messageText, messageText) ||
                other.messageText == messageText) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.messageUserName, messageUserName) ||
                other.messageUserName == messageUserName) &&
            (identical(other.userIdOut, userIdOut) ||
                other.userIdOut == userIdOut) &&
            (identical(other.notification, notification) ||
                other.notification == notification) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.modified, modified) ||
                other.modified == modified));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      chatMessageId,
      botId,
      userIdIn,
      messageText,
      messageId,
      messageUserName,
      userIdOut,
      notification,
      created,
      modified);

  /// Create a copy of BotChatEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BotChatEntityImplCopyWith<_$BotChatEntityImpl> get copyWith =>
      __$$BotChatEntityImplCopyWithImpl<_$BotChatEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BotChatEntityImplToJson(
      this,
    );
  }
}

abstract class _BotChatEntity implements BotChatEntity {
  factory _BotChatEntity(
      {@JsonKey(name: 'chat_message_id') final int? chatMessageId,
      @JsonKey(name: 'bot_id') required final int botId,
      @JsonKey(name: 'user_id_in') required final int userIdIn,
      @JsonKey(name: 'message_text') required final String messageText,
      @JsonKey(name: 'message_id') final String? messageId,
      @JsonKey(name: 'message_user_name') final String? messageUserName,
      @JsonKey(name: 'user_id_out') final int? userIdOut,
      @JsonKey(name: 'notification') final bool? notification,
      final DateTime? created,
      final DateTime? modified}) = _$BotChatEntityImpl;

  factory _BotChatEntity.fromJson(Map<String, dynamic> json) =
      _$BotChatEntityImpl.fromJson;

  @override
  @JsonKey(name: 'chat_message_id')
  int? get chatMessageId;
  @override
  @JsonKey(name: 'bot_id')
  int get botId;
  @override
  @JsonKey(name: 'user_id_in')
  int get userIdIn;
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
  @JsonKey(name: 'user_id_out')
  int? get userIdOut;
  @override
  @JsonKey(name: 'notification')
  bool? get notification;
  @override
  DateTime? get created;
  @override
  DateTime? get modified;

  /// Create a copy of BotChatEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BotChatEntityImplCopyWith<_$BotChatEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
