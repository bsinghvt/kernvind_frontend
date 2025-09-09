import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:googleapis/drive/v3.dart';
import 'package:kernvind/core/configuration/config.dart';
import 'package:kernvind/core/error/freezed_classes/failure_error.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/domain/entities/google_drive_folder_entity.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/presentation/providers/google_drive_auth/google_drive_auth_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:extension_google_sign_in_as_googleapis_auth/extension_google_sign_in_as_googleapis_auth.dart';
part 'google_drive_sign_in_provider.g.dart';

const String folderMimeTypeQuery =
    "mimeType='application/vnd.google-apps.folder'";
const String fieldsToQuery = 'nextPageToken, files(id, name, mimeType)';

const List<String> scopes = <String>[
  'https://www.googleapis.com/auth/userinfo.email',
  'https://www.googleapis.com/auth/drive.readonly',
  'openid',
  'https://www.googleapis.com/auth/userinfo.profile'
];
@riverpod
GoogleSignIn googleDriveSignIn(Ref ref) {
  if (kIsWeb) {
    return GoogleSignIn(
      scopes: scopes,
      forceCodeForRefreshToken: true,
    );
  } else {
    if (Platform.isAndroid) {
      return GoogleSignIn(
        scopes: scopes,
        clientId: ConfigSingleton().androidGoogleSignInWebClientID,
        forceCodeForRefreshToken: true,
      );
    } else {
      return GoogleSignIn(
        scopes: scopes,
        forceCodeForRefreshToken: true,
      );
    }
  }
}

@riverpod
class GoogleDriveAuth extends _$GoogleDriveAuth {
  StreamSubscription<GoogleSignInAccount?>? _sub;
  String? _accessToken;
  String? _serverAuthCode;
  @override
  GoogleDriveAuthState build() {
    if (_sub != null) {
      _sub?.cancel();
    }
    ref.onDispose(() {
      _sub?.cancel();
    });
    state = const GoogleDriveAuthInitial();

    final googleSignIn = ref.watch(googleDriveSignInProvider);

    _sub = googleSignIn.onCurrentUserChanged
        .listen((GoogleSignInAccount? googleSignInAccount) async {
      if (googleSignInAccount == null) {
        state = const GoogleDriveAuthStateSignOut();
        return;
      }

      if (kIsWeb) {
        bool isAuthorized = await googleSignIn.canAccessScopes(scopes);
        if (isAuthorized) {
          _googleDriveFolderList(
              platform: 'web', googleSignInAccount: googleSignInAccount);
          return;
        }
        state = GoogleDriveAuthScopeAndSignInSuccess(
            currentUser: googleSignInAccount,
            isAuthorize: isAuthorized,
            googleDriveFolders: [],
            areFilesAvailable: false);
      } else {
        if (Platform.isAndroid) {
          _googleDriveFolderList(
              platform: 'android', googleSignInAccount: googleSignInAccount);
        } else if (Platform.isIOS || Platform.isMacOS) {
          _googleDriveFolderList(
              platform: 'ios', googleSignInAccount: googleSignInAccount);
        } else {
          state = GoogleDriveAuthFailure(FailureError(
              error:
                  'Google sign in is not supported on your device. Please use other sign in method'));
        }
      }
    });
    // googleSignIn.signInSilently();
    return state;
  }

  String? getAccessToken() {
    return _accessToken;
  }

  String? getServerAuthCode() {
    return _serverAuthCode;
  }

  Future<void> checkFilesInFolder(
      {required String folderId,
      required GoogleSignInAccount googleSignInAccount}) async {
    final prevState = state;
    List<GoogleDriveFolderEntity> googleDriveFolders = [];
    if (prevState is GoogleDriveAuthScopeAndSignInSuccess) {
      googleDriveFolders = prevState.googleDriveFolders;
    }

    final String parentFolderQuery = "'$folderId' in parents";
    const String fileMimeTypeQuery = "(mimeType='application/msword'"
        " or mimeType='application/vnd.openxmlformats-officedocument.wordprocessingml.document'"
        " or mimeType='application/vnd.ms-excel'"
        " or mimeType='application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'"
        " or mimeType='application/vnd.google-apps.document'"
        " or mimeType='application/vnd.google-apps.spreadsheet'"
        " or mimeType='text/plain'"
        " or mimeType='application/pdf'"
        " or mimeType='text/csv')";
    final String query = '$parentFolderQuery and $fileMimeTypeQuery';
    final googleSignIn = ref.read(googleDriveSignInProvider);
    try {
      final httpClient = await googleSignIn.authenticatedClient();
      if (httpClient == null) {
        GoogleDriveAuthFailure(FailureError(error: 'Google sign in failed'));
        return;
      }
      if (httpClient.credentials.accessToken.hasExpired) {
        state = GoogleDriveAuthFailure(
            FailureError(error: 'Signed out, please sign in again'));
        return;
      }
      _serverAuthCode = googleSignInAccount.serverAuthCode;
      _accessToken = httpClient.credentials.accessToken.data;
      final driveApi = DriveApi(httpClient);
      final file = driveApi.files;
      final googleFileList =
          await file.list(q: query, $fields: fieldsToQuery, pageSize: 2);
      final files = googleFileList.files;
      if (files == null || files.isEmpty) {
        state = GoogleDriveAuthScopeAndSignInSuccess(
            currentUser: googleSignInAccount,
            isAuthorize: true,
            googleDriveFolders: googleDriveFolders,
            areFilesAvailable: false);
        return;
      }
      List<String> sampleFiles = [];
      for (final file in files) {
        sampleFiles.add(file.name!);
      }
      final st = GoogleDriveAuthScopeAndSignInSuccess(
          currentUser: googleSignInAccount,
          isAuthorize: true,
          googleDriveFolders: googleDriveFolders,
          areFilesAvailable: true);
      st.sampleFiles = sampleFiles.join(',');
      state = st;
    } catch (e) {
      state = GoogleDriveAuthFailure(
          FailureError(error: 'Signed out, please sign in again'));
    }
  }

  Future<void> _googleDriveFolderList(
      {required String platform,
      required GoogleSignInAccount googleSignInAccount}) async {
    final googleSignIn = ref.read(googleDriveSignInProvider);
    final List<GoogleDriveFolderEntity> googleDriveFolders = [];
    try {
      final httpClient = await googleSignIn.authenticatedClient();
      if (httpClient == null) {
        GoogleDriveAuthFailure(FailureError(error: 'Google sign in failed'));
        return;
      }

      if (httpClient.credentials.accessToken.hasExpired) {
        state = GoogleDriveAuthFailure(
            FailureError(error: 'Signed out, please sign in again'));
        return;
      }
      _accessToken = httpClient.credentials.accessToken.data;
      final driveApi = DriveApi(httpClient);
      final file = driveApi.files;
      final googleFolderList =
          await file.list(q: folderMimeTypeQuery, $fields: fieldsToQuery);
      final folders = googleFolderList.files;
      googleFolderList.nextPageToken;
      if (folders != null) {
        for (final folder in folders) {
          if (folder.id != null) {
            googleDriveFolders.add(GoogleDriveFolderEntity(
                folderId: folder.id!,
                folderName: folder.name!,
                mimeType: folder.mimeType!));
          }
        }
      }
      state = GoogleDriveAuthScopeAndSignInSuccess(
          currentUser: googleSignInAccount,
          isAuthorize: true,
          googleDriveFolders: googleDriveFolders,
          areFilesAvailable: false);
    } catch (e) {
      state = GoogleDriveAuthFailure(
          FailureError(error: 'Signed out, please sign in again'));
    }
  }

  Future<void> handleGoogleDriveAuthorizeScopes() async {
    final googleSignIn = ref.read(googleDriveSignInProvider);
    state = const GoogleDriveAuthLoading();
    try {
      bool isAuthorized = await googleSignIn.requestScopes(scopes);
      if (!isAuthorized) {
        state = GoogleDriveAuthFailure(
            FailureError(error: 'Google scope permissions failed'));
      } else {
        GoogleSignInAccount? googleSignInAccount = googleSignIn.currentUser;

        if (googleSignInAccount == null) {
          state = GoogleDriveAuthFailure(
              FailureError(error: 'Google sign in failed'));
          return;
        }
        _googleDriveFolderList(
            platform: 'web', googleSignInAccount: googleSignInAccount);
      }
    } catch (error) {
      state = GoogleDriveAuthFailure(FailureError(error: error.toString()));
    }
  }

  Future<void> handleGoogleSignIn() async {
    final googleSignIn = ref.read(googleDriveSignInProvider);
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await googleSignIn.signIn();
      if (googleSignInAccount != null) {
        state = const GoogleDriveAuthLoading();
      } else {
        state = GoogleDriveAuthFailure(
            FailureError(error: 'Google sign in failed'));
      }
    } catch (error) {
      state = GoogleDriveAuthFailure(FailureError(error: error.toString()));
    }
  }
}
