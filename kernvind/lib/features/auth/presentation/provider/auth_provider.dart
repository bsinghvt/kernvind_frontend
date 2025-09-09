import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kernvind/core/providers/jwt_auth/auth_token_state_provider.dart';
import 'package:kernvind/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:kernvind/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:kernvind/features/auth/domain/entities/login_entity.dart';
import 'package:kernvind/features/auth/domain/entities/signup_entity.dart';
import 'package:kernvind/features/auth/presentation/provider/auth_provider_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_provider.g.dart';

@riverpod
Dio dio(Ref ref) {
  return Dio();
}

@riverpod
AuthRemoteDatasourceImpl authRemoteDatasource(Ref ref) {
  return AuthRemoteDatasourceImpl(ref.watch(dioProvider));
}

@riverpod
AuthRepositoryImpl authRepositoryUseCase(Ref ref) {
  return AuthRepositoryImpl(
      authRemoteDataSource: ref.watch(authRemoteDatasourceProvider));
}

@riverpod
class SignUpAuthState extends _$SignUpAuthState {
  @override
  AuthState build() {
    return AuthInitial();
  }

  Future<void> signupUser(SignupEntity signupModel) async {
    final authRepositoryImpl = ref.read(authRepositoryUseCaseProvider);
    state = AuthLoading();
    final tokenOrFailure =
        await authRepositoryImpl.signUpUser(signUpModel: signupModel);
    tokenOrFailure.fold((error) => state = AuthFailure(error), (token) async {
      await ref
          .read(authTokenStateNotifierProvider.notifier)
          .storeTokens(tokenResp: token);
      state = const AuthSuccess();
    });
  }
}

@riverpod
class LoginAuthState extends _$LoginAuthState {
  @override
  AuthState build() {
    return AuthInitial();
  }

  Future<void> loginUser(LoginEntity loginModel) async {
    final authRepositoryImpl = ref.read(authRepositoryUseCaseProvider);
    state = AuthLoading();
    final tokenOrFailure =
        await authRepositoryImpl.loginUser(loginModel: loginModel);
    tokenOrFailure.fold((error) => state = AuthFailure(error), (token) async {
      await ref
          .read(authTokenStateNotifierProvider.notifier)
          .storeTokens(tokenResp: token);
      state = const AuthSuccess();
    });
  }
}
