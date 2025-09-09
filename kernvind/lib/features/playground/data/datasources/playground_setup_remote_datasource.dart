import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:fpdart/fpdart.dart';
import 'package:kernvind/core/configuration/config.dart';
import 'package:kernvind/core/error/freezed_classes/failure_error.dart';
import 'package:kernvind/features/playground/domain/entities/playground_token_entity.dart';
import 'package:kernvind/features/playground/domain/entities/public_llm_list_entity.dart';
import 'package:mime/mime.dart';

abstract interface class PlayGroundSetupRemoteDatasource {
  Future<Either<FailureError, List<PublicLlmListEntity>>> getAvailableLlms();
  Future<Either<FailureError, PlaygroundTokenEntity>> playgroundDataUpload(
      {required PlatformFile file});
}

class PlayGroundSetupRemoteDatasourceImpl
    implements PlayGroundSetupRemoteDatasource {
  final Dio dio;

  PlayGroundSetupRemoteDatasourceImpl(this.dio);

  @override
  Future<Either<FailureError, List<PublicLlmListEntity>>>
      getAvailableLlms() async {
    try {
      Response resp;
      resp = await dio.get(
        ConfigSingleton().publicLlmListUrl,
      );
      return right(listOfLlms(resp.data));
    } on DioException catch (e) {
      if (e.response != null) {
        try {
          return left(FailureError.fromJson(e.response!.data));
        } catch (e) {
          return left(FailureError());
        }
      }
      return left(FailureError());
    } catch (e) {
      return left(FailureError());
    }
  }

  @override
  Future<Either<FailureError, PlaygroundTokenEntity>> playgroundDataUpload(
      {required PlatformFile file}) async {
    if (file.extension == null) {
      return left(FailureError(error: 'File extension is not available'));
    }
    final mimeType = lookupMimeType(file.extension!);
    if (mimeType == null) {
      return left(FailureError(error: 'File extension is not available'));
    }
    final FormData formData;
    try {
      formData = FormData.fromMap({
        'file': MultipartFile.fromBytes(file.bytes!,
            filename: file.name, contentType: DioMediaType.parse(mimeType)),
      });
    } catch (e) {
      return left(FailureError(error: 'File extension can not be processed'));
    }
    try {
      Response resp;
      resp = await dio.post(ConfigSingleton().playgroundDatauploadUrl,
          data: formData);
      return right(PlaygroundTokenEntity.fromJson(resp.data));
    } on DioException catch (e) {
      if (e.response != null) {
        try {
          return left(FailureError.fromJson(e.response!.data));
        } catch (e) {
          return left(FailureError());
        }
      }
      return left(FailureError());
    } catch (e) {
      return left(FailureError());
    }
  }
}
