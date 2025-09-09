import 'package:fpdart/fpdart.dart';
import 'package:kernvind/core/entities/success/success_msg.dart';
import 'package:kernvind/core/error/freezed_classes/failure_error.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/domain/entities/datasource_add_feed_entity.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/domain/entities/datasource_create_entity.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/domain/entities/datasource_details_entity.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/domain/entities/datasource_entity.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/domain/entities/datasource_update_entity.dart';

abstract interface class DatasourceRepositoryUseCase {
  Future<Either<FailureError, DatasourceCreateEntity>> createDatasource(
      {required DatasourceCreateEntity datasource});

  Future<Either<FailureError, List<DatasourceListEntity>>> listDatasources();
  Future<Either<FailureError, DatasourceDetailsEntity>> getDatasourceDetails(
      {required int datasourceId});

  Future<Either<FailureError, DatasourceDetailsEntity>>
      updateDatasourceNameAndDesc({required DatasourceUpdateEntity datasource});

  Future<Either<FailureError, SuccessMsg>> deleteDatasource(
      {required int datasourceId});

  Future<Either<FailureError, DatasourceDetailsEntity>> addDatasourceFeed(
      {required DatasourceAddFeedEntity datasourceFeed});

  Future<Either<FailureError, DatasourceDetailsEntity>> deleteDatasourceFeed(
      {required int datafeedId});
}
