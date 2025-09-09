import 'package:kernvind/core/error/freezed_classes/failure_error.dart';

sealed class AuthState {
  const AuthState();
}

final class AuthInitial extends AuthState {}

final class AuthLoading extends AuthState {}

final class AuthSuccess extends AuthState {
  const AuthSuccess();
}

final class AuthFailure extends AuthState {
  final FailureError error;
  const AuthFailure(this.error);
}
