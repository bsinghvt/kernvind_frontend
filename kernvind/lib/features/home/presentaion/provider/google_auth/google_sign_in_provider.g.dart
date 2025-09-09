// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_sign_in_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$googleSignInHash() => r'd7175b359684641c16193efc16fb53402eccc401';

/// See also [googleSignIn].
@ProviderFor(googleSignIn)
final googleSignInProvider = AutoDisposeProvider<GoogleSignIn>.internal(
  googleSignIn,
  name: r'googleSignInProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$googleSignInHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GoogleSignInRef = AutoDisposeProviderRef<GoogleSignIn>;
String _$googleAuthHash() => r'3829d5b10c3acd42beb7f83e333bf7e7f006cb53';

/// See also [GoogleAuth].
@ProviderFor(GoogleAuth)
final googleAuthProvider =
    AutoDisposeNotifierProvider<GoogleAuth, GoogleAuthState>.internal(
  GoogleAuth.new,
  name: r'googleAuthProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$googleAuthHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$GoogleAuth = AutoDisposeNotifier<GoogleAuthState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
