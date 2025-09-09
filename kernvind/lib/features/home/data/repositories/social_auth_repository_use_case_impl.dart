import 'package:fpdart/fpdart.dart';
import 'package:kernvind/core/entities/JWT/token_response_entity.dart';
import 'package:kernvind/core/error/freezed_classes/failure_error.dart';
import 'package:kernvind/features/home/data/datasources/social_auth_remote_datasource.dart';
import 'package:kernvind/features/home/domain/entities/google_sign_in_id_token_entity.dart';
import 'package:kernvind/features/home/domain/repositories/social_auth_repository_use_case.dart';

class SocialAuthRepositoryUseCaseImpl implements SocialAuthRepositoryUseCase {
  final SocialAuthRemoteDatasourceImpl socialAuthRemoteDatasourceImpl;

  SocialAuthRepositoryUseCaseImpl(
      {required this.socialAuthRemoteDatasourceImpl});
  @override
  Future<Either<FailureError, TokenResponseEntity>> googleSignInUser(
      {required GoogleSignInIdTokenEntity idTokenEntity}) {
    return socialAuthRemoteDatasourceImpl.googleSignInUser(
        idTokenEntity: idTokenEntity);
  }
}
