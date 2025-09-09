import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'bot_edit_mode_provider.g.dart';

@riverpod
class BotEdit extends _$BotEdit {
  @override
  bool build() {
    return false;
  }

  void setBotEditMode(bool botEditMode) {
    state = botEditMode;
  }
}

@riverpod
class BotChangeDatasource extends _$BotChangeDatasource {
  @override
  bool build() {
    return false;
  }

  void setDatasourceEditMode(bool botAddDatasourceEditMode) {
    state = botAddDatasourceEditMode;
  }
}

@riverpod
class BotAddUserEditMode extends _$BotAddUserEditMode {
  @override
  bool build() {
    return false;
  }

  void setAddUserEditMode(bool addUserEditMode) {
    state = addUserEditMode;
  }
}

@riverpod
class BotLlmChangeEditMode extends _$BotLlmChangeEditMode {
  @override
  bool build() {
    return false;
  }

  void setBotLLmChangeEditMode(bool botLLmChangeEditMode) {
    state = botLLmChangeEditMode;
  }
}
