import 'package:google_sign_in/google_sign_in.dart';
import 'package:kernvind/core/error/freezed_classes/failure_error.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/domain/entities/google_drive_folder_entity.dart';

sealed class GoogleDriveAuthState {
  const GoogleDriveAuthState();
}

final class GoogleDriveAuthInitial extends GoogleDriveAuthState {
  const GoogleDriveAuthInitial();
}

final class GoogleDriveAuthLoading extends GoogleDriveAuthState {
  const GoogleDriveAuthLoading();
}

final class GoogleDriveAuthScopeAndSignInSuccess extends GoogleDriveAuthState {
  final GoogleSignInAccount currentUser;
  final bool isAuthorize;
  final List<GoogleDriveFolderEntity> googleDriveFolders;
  final bool areFilesAvailable;
  String sampleFiles;
  GoogleDriveAuthScopeAndSignInSuccess(
      {required this.currentUser,
      required this.isAuthorize,
      required this.googleDriveFolders,
      required this.areFilesAvailable})
      : sampleFiles = '';
}

final class GoogleDriveAuthStateSignOut extends GoogleDriveAuthState {
  const GoogleDriveAuthStateSignOut();
}

final class GoogleDriveAuthFailure extends GoogleDriveAuthState {
  final FailureError error;
  const GoogleDriveAuthFailure(this.error);
}
