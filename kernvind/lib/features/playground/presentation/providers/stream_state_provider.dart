import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'stream_state_provider.g.dart';

@riverpod
class StreamState extends _$StreamState {
  @override
  bool build() {
    return false;
  }

  void setStreamDone() {
    state = true;
  }

  void setStreamNotDone() {
    state = false;
  }
}
