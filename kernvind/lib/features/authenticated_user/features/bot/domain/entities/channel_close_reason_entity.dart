import 'package:freezed_annotation/freezed_annotation.dart';

part 'channel_close_reason_entity.freezed.dart';
part 'channel_close_reason_entity.g.dart';

@freezed
class ChannelCloseReasonEntity with _$ChannelCloseReasonEntity {
  factory ChannelCloseReasonEntity({
    String? closeReason,
    int? code,
  }) = _ChannelCloseReasonEntity;

  factory ChannelCloseReasonEntity.fromJson(Map<String, dynamic> json) =>
      _$ChannelCloseReasonEntityFromJson(json);
}
