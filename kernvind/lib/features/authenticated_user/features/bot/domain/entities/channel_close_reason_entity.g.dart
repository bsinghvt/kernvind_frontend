// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_close_reason_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChannelCloseReasonEntityImpl _$$ChannelCloseReasonEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ChannelCloseReasonEntityImpl(
      closeReason: json['closeReason'] as String?,
      code: (json['code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ChannelCloseReasonEntityImplToJson(
        _$ChannelCloseReasonEntityImpl instance) =>
    <String, dynamic>{
      'closeReason': instance.closeReason,
      'code': instance.code,
    };
