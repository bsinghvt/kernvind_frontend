import 'package:kernvind/core/error/freezed_classes/failure_error.dart';

sealed class AuthTokenState {
  const AuthTokenState();
}

final class NoAccessTokenState extends AuthTokenState {}

final class AvailableAccessTokenState extends AuthTokenState {
  final String token;
  const AvailableAccessTokenState({required this.token});
}

final class RefreshTokenExpiredState extends AuthTokenState {}

final class RefreshTokenFailureState extends AuthTokenState {
  final FailureError error;
  const RefreshTokenFailureState(this.error);
}
