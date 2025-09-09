import 'package:google_sign_in/google_sign_in.dart';
import 'package:kernvind/core/error/freezed_classes/failure_error.dart';

sealed class GoogleAuthState {
  const GoogleAuthState();
}

final class GoogleAuthInitial extends GoogleAuthState {
  const GoogleAuthInitial();
}

final class GoogleAuthLoading extends GoogleAuthState {
  const GoogleAuthLoading();
}

final class GoogleAuthScopeAndSignInSuccess extends GoogleAuthState {
  final GoogleSignInAccount currentUser;
  final bool isAuthorize;
  const GoogleAuthScopeAndSignInSuccess(
      {required this.currentUser, required this.isAuthorize});
}

final class GoogleAuthStateSignOut extends GoogleAuthState {
  const GoogleAuthStateSignOut();
}

final class GoogleAuthFailure extends GoogleAuthState {
  final FailureError error;
  const GoogleAuthFailure(this.error);
}
