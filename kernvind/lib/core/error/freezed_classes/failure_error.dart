import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure_error.freezed.dart';
part 'failure_error.g.dart';

@freezed
class FailureError with _$FailureError {
  factory FailureError(
      {@Default("Something went worng in app.") String error}) = _FailureError;

  factory FailureError.fromJson(Map<String, dynamic> json) =>
      _$FailureErrorFromJson(json);
}
