import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'user_llm_edit_mode_provider.g.dart';

@riverpod
class UserLlmEditModeProvider extends _$UserLlmEditModeProvider {
  @override
  bool build() {
    return false;
  }

  void setUserLlmEditMode(bool userLlmEditMode) {
    state = userLlmEditMode;
  }
}
