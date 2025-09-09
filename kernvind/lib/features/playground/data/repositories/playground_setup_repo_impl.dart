import 'package:file_picker/file_picker.dart';
import 'package:fpdart/fpdart.dart';

import 'package:kernvind/core/error/freezed_classes/failure_error.dart';

import 'package:kernvind/features/playground/data/datasources/playground_setup_remote_datasource.dart';
import 'package:kernvind/features/playground/domain/entities/playground_token_entity.dart';
import 'package:kernvind/features/playground/domain/entities/public_llm_list_entity.dart';
import 'package:kernvind/features/playground/domain/repositories/playground_setup_repo.dart';

class PlaygroundSetupRepoImpl implements PlaygroundSetupRepo {
  final PlayGroundSetupRemoteDatasourceImpl _groundSetupRemoteDatasourceImpl;

  PlaygroundSetupRepoImpl(this._groundSetupRemoteDatasourceImpl);

  @override
  Future<Either<FailureError, List<PublicLlmListEntity>>> getAvailableLlms() {
    return _groundSetupRemoteDatasourceImpl.getAvailableLlms();
  }

  @override
  Future<Either<FailureError, PlaygroundTokenEntity>> playgroundDataUpload(
      {required PlatformFile file}) {
    return _groundSetupRemoteDatasourceImpl.playgroundDataUpload(file: file);
  }
}
