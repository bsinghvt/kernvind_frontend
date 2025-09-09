import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'datasource_edit_mode_provider.g.dart';

@riverpod
class DatasourceEditMode extends _$DatasourceEditMode {
  @override
  bool build() {
    return false;
  }

  void setDatasourceEditMode(bool datasourceEditMode) {
    state = datasourceEditMode;
  }
}

@riverpod
class DatafeedAddEditMode extends _$DatafeedAddEditMode {
  @override
  bool build() {
    return false;
  }

  void setDatafeedAddEditMode(bool datafeedAddEditMode) {
    state = datafeedAddEditMode;
  }
}
