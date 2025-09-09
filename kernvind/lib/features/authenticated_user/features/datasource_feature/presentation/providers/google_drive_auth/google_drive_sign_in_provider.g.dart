// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_drive_sign_in_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$googleDriveSignInHash() => r'66924fae2c8a6975bcb06b9ddf11cf23ff6885bd';

/// See also [googleDriveSignIn].
@ProviderFor(googleDriveSignIn)
final googleDriveSignInProvider = AutoDisposeProvider<GoogleSignIn>.internal(
  googleDriveSignIn,
  name: r'googleDriveSignInProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$googleDriveSignInHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GoogleDriveSignInRef = AutoDisposeProviderRef<GoogleSignIn>;
String _$googleDriveAuthHash() => r'ff0035c96f31c410aae1a6a3a90f8eb1cdcaf7d6';

/// See also [GoogleDriveAuth].
@ProviderFor(GoogleDriveAuth)
final googleDriveAuthProvider =
    AutoDisposeNotifierProvider<GoogleDriveAuth, GoogleDriveAuthState>.internal(
  GoogleDriveAuth.new,
  name: r'googleDriveAuthProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$googleDriveAuthHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$GoogleDriveAuth = AutoDisposeNotifier<GoogleDriveAuthState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
