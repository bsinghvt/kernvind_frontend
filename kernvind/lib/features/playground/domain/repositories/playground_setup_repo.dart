import 'package:file_picker/file_picker.dart';
import 'package:fpdart/fpdart.dart';

import 'package:kernvind/core/error/freezed_classes/failure_error.dart';
import 'package:kernvind/features/playground/domain/entities/playground_token_entity.dart';
import 'package:kernvind/features/playground/domain/entities/public_llm_list_entity.dart';

abstract interface class PlaygroundSetupRepo {
  Future<Either<FailureError, List<PublicLlmListEntity>>> getAvailableLlms();
  Future<Either<FailureError, PlaygroundTokenEntity>> playgroundDataUpload(
      {required PlatformFile file});
}
