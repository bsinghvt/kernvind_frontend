import 'package:fpdart/fpdart.dart';
import 'package:kernvind/core/entities/JWT/token_response_entity.dart';
import 'package:kernvind/core/error/freezed_classes/failure_error.dart';
import 'package:kernvind/features/home/domain/entities/google_sign_in_id_token_entity.dart';

abstract interface class SocialAuthRepositoryUseCase {
  Future<Either<FailureError, TokenResponseEntity>> googleSignInUser(
      {required GoogleSignInIdTokenEntity idTokenEntity});
}
