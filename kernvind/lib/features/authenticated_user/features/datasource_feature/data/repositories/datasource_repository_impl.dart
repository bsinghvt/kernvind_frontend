import 'package:kernvind/core/entities/success/success_msg.dart';
import 'package:kernvind/core/error/freezed_classes/failure_error.dart';
import 'package:fpdart/fpdart.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/data/datasource/datasource_remote_datasource.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/domain/entities/datasource_add_feed_entity.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/domain/entities/datasource_create_entity.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/domain/entities/datasource_details_entity.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/domain/entities/datasource_entity.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/domain/entities/datasource_update_entity.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/domain/repositories/datasource_repository_use_case.dart';

class DataSourceRepositoryImpl implements DatasourceRepositoryUseCase {
  final DataSourceRemoteDataSourceImpl dataSourceRemoteDataSourceImpl;

  DataSourceRepositoryImpl({required this.dataSourceRemoteDataSourceImpl});
  @override
  Future<Either<FailureError, DatasourceCreateEntity>> createDatasource(
      {required DatasourceCreateEntity datasource}) {
    return dataSourceRemoteDataSourceImpl.createDatasource(
        datasource: datasource);
  }

  @override
  Future<Either<FailureError, List<DatasourceListEntity>>> listDatasources() {
    return dataSourceRemoteDataSourceImpl.listDatasources();
  }

  @override
  Future<Either<FailureError, DatasourceDetailsEntity>> getDatasourceDetails(
      {required int datasourceId}) {
    return dataSourceRemoteDataSourceImpl.getDatasourceDetails(
        datasourceId: datasourceId);
  }

  @override
  Future<Either<FailureError, DatasourceDetailsEntity>>
      updateDatasourceNameAndDesc(
          {required DatasourceUpdateEntity datasource}) {
    return dataSourceRemoteDataSourceImpl.updateDatasourceNameAndDesc(
        datasource: datasource);
  }

  @override
  Future<Either<FailureError, SuccessMsg>> deleteDatasource(
      {required int datasourceId}) {
    return dataSourceRemoteDataSourceImpl.deleteDatasource(
        datasourceId: datasourceId);
  }

  @override
  Future<Either<FailureError, DatasourceDetailsEntity>> addDatasourceFeed(
      {required DatasourceAddFeedEntity datasourceFeed}) {
    return dataSourceRemoteDataSourceImpl.addDatasourceFeed(
        datasourceFeed: datasourceFeed);
  }

  @override
  Future<Either<FailureError, DatasourceDetailsEntity>> deleteDatasourceFeed(
      {required int datafeedId}) {
    return dataSourceRemoteDataSourceImpl.deleteDatasourceFeed(
        datafeedId: datafeedId);
  }
}
