import 'package:freezed_annotation/freezed_annotation.dart';

part 'success_msg.freezed.dart';
part 'success_msg.g.dart';

@freezed
class SuccessMsg with _$SuccessMsg {
  factory SuccessMsg({
    required String msg,
  }) = _SuccessMsg;

  factory SuccessMsg.fromJson(Map<String, dynamic> json) =>
      _$SuccessMsgFromJson(json);
}
