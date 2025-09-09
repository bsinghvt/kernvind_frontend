// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dioHash() => r'a03da399b44b3740dc4fcfc6716203041d66ff01';

/// See also [dio].
@ProviderFor(dio)
final dioProvider = AutoDisposeProvider<Dio>.internal(
  dio,
  name: r'dioProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$dioHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef DioRef = AutoDisposeProviderRef<Dio>;
String _$authRemoteDatasourceHash() =>
    r'30cffc4b7c93fe4bec58a4a5d6910fdbd1ce1498';

/// See also [authRemoteDatasource].
@ProviderFor(authRemoteDatasource)
final authRemoteDatasourceProvider =
    AutoDisposeProvider<AuthRemoteDatasourceImpl>.internal(
  authRemoteDatasource,
  name: r'authRemoteDatasourceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$authRemoteDatasourceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AuthRemoteDatasourceRef
    = AutoDisposeProviderRef<AuthRemoteDatasourceImpl>;
String _$authRepositoryUseCaseHash() =>
    r'c1bc6f2d5d34813759fe1e2a5c2abdb2daa1eb53';

/// See also [authRepositoryUseCase].
@ProviderFor(authRepositoryUseCase)
final authRepositoryUseCaseProvider =
    AutoDisposeProvider<AuthRepositoryImpl>.internal(
  authRepositoryUseCase,
  name: r'authRepositoryUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$authRepositoryUseCaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AuthRepositoryUseCaseRef = AutoDisposeProviderRef<AuthRepositoryImpl>;
String _$signUpAuthStateHash() => r'a2584c501eab5b9f0fc4c68c501a9b764bc05e8a';

/// See also [SignUpAuthState].
@ProviderFor(SignUpAuthState)
final signUpAuthStateProvider =
    AutoDisposeNotifierProvider<SignUpAuthState, AuthState>.internal(
  SignUpAuthState.new,
  name: r'signUpAuthStateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$signUpAuthStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SignUpAuthState = AutoDisposeNotifier<AuthState>;
String _$loginAuthStateHash() => r'fe5a5280662f9d2f82ddd22b10a2011dbd7171d0';

/// See also [LoginAuthState].
@ProviderFor(LoginAuthState)
final loginAuthStateProvider =
    AutoDisposeNotifierProvider<LoginAuthState, AuthState>.internal(
  LoginAuthState.new,
  name: r'loginAuthStateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$loginAuthStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$LoginAuthState = AutoDisposeNotifier<AuthState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
