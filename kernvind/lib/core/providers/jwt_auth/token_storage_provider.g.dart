// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_storage_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tokenStorageHash() => r'cfc535a45b5d1e1ef63e608d5eb26e941680024c';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [tokenStorage].
@ProviderFor(tokenStorage)
const tokenStorageProvider = TokenStorageFamily();

/// See also [tokenStorage].
class TokenStorageFamily extends Family<AsyncValue<void>> {
  /// See also [tokenStorage].
  const TokenStorageFamily();

  /// See also [tokenStorage].
  TokenStorageProvider call({
    required TokenResponseEntity tokenResp,
  }) {
    return TokenStorageProvider(
      tokenResp: tokenResp,
    );
  }

  @override
  TokenStorageProvider getProviderOverride(
    covariant TokenStorageProvider provider,
  ) {
    return call(
      tokenResp: provider.tokenResp,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'tokenStorageProvider';
}

/// See also [tokenStorage].
class TokenStorageProvider extends AutoDisposeFutureProvider<void> {
  /// See also [tokenStorage].
  TokenStorageProvider({
    required TokenResponseEntity tokenResp,
  }) : this._internal(
          (ref) => tokenStorage(
            ref as TokenStorageRef,
            tokenResp: tokenResp,
          ),
          from: tokenStorageProvider,
          name: r'tokenStorageProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$tokenStorageHash,
          dependencies: TokenStorageFamily._dependencies,
          allTransitiveDependencies:
              TokenStorageFamily._allTransitiveDependencies,
          tokenResp: tokenResp,
        );

  TokenStorageProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.tokenResp,
  }) : super.internal();

  final TokenResponseEntity tokenResp;

  @override
  Override overrideWith(
    FutureOr<void> Function(TokenStorageRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TokenStorageProvider._internal(
        (ref) => create(ref as TokenStorageRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        tokenResp: tokenResp,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _TokenStorageProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TokenStorageProvider && other.tokenResp == tokenResp;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, tokenResp.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin TokenStorageRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `tokenResp` of this provider.
  TokenResponseEntity get tokenResp;
}

class _TokenStorageProviderElement
    extends AutoDisposeFutureProviderElement<void> with TokenStorageRef {
  _TokenStorageProviderElement(super.provider);

  @override
  TokenResponseEntity get tokenResp =>
      (origin as TokenStorageProvider).tokenResp;
}

String _$deleteTokensHash() => r'4ba23ff8c8037950680c826d67fcff0a252ae7ca';

/// See also [deleteTokens].
@ProviderFor(deleteTokens)
final deleteTokensProvider = AutoDisposeFutureProvider<void>.internal(
  deleteTokens,
  name: r'deleteTokensProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$deleteTokensHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef DeleteTokensRef = AutoDisposeFutureProviderRef<void>;
String _$newTokenStorageHash() => r'c56315d8c222bbec56f770dce00ed2f03edffc30';

/// See also [newTokenStorage].
@ProviderFor(newTokenStorage)
const newTokenStorageProvider = NewTokenStorageFamily();

/// See also [newTokenStorage].
class NewTokenStorageFamily extends Family<AsyncValue<void>> {
  /// See also [newTokenStorage].
  const NewTokenStorageFamily();

  /// See also [newTokenStorage].
  NewTokenStorageProvider call({
    required String newToken,
  }) {
    return NewTokenStorageProvider(
      newToken: newToken,
    );
  }

  @override
  NewTokenStorageProvider getProviderOverride(
    covariant NewTokenStorageProvider provider,
  ) {
    return call(
      newToken: provider.newToken,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'newTokenStorageProvider';
}

/// See also [newTokenStorage].
class NewTokenStorageProvider extends AutoDisposeFutureProvider<void> {
  /// See also [newTokenStorage].
  NewTokenStorageProvider({
    required String newToken,
  }) : this._internal(
          (ref) => newTokenStorage(
            ref as NewTokenStorageRef,
            newToken: newToken,
          ),
          from: newTokenStorageProvider,
          name: r'newTokenStorageProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$newTokenStorageHash,
          dependencies: NewTokenStorageFamily._dependencies,
          allTransitiveDependencies:
              NewTokenStorageFamily._allTransitiveDependencies,
          newToken: newToken,
        );

  NewTokenStorageProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.newToken,
  }) : super.internal();

  final String newToken;

  @override
  Override overrideWith(
    FutureOr<void> Function(NewTokenStorageRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: NewTokenStorageProvider._internal(
        (ref) => create(ref as NewTokenStorageRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        newToken: newToken,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _NewTokenStorageProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NewTokenStorageProvider && other.newToken == newToken;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, newToken.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin NewTokenStorageRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `newToken` of this provider.
  String get newToken;
}

class _NewTokenStorageProviderElement
    extends AutoDisposeFutureProviderElement<void> with NewTokenStorageRef {
  _NewTokenStorageProviderElement(super.provider);

  @override
  String get newToken => (origin as NewTokenStorageProvider).newToken;
}

String _$getStorageAccessTokenValueHash() =>
    r'2d24945bbc3ce8d92ba2a2413f65188697aecc4c';

/// See also [getStorageAccessTokenValue].
@ProviderFor(getStorageAccessTokenValue)
final getStorageAccessTokenValueProvider =
    AutoDisposeFutureProvider<String?>.internal(
  getStorageAccessTokenValue,
  name: r'getStorageAccessTokenValueProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getStorageAccessTokenValueHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetStorageAccessTokenValueRef = AutoDisposeFutureProviderRef<String?>;
String _$getStorageRefreshTokenValueHash() =>
    r'8129dcd879eb41e6a596bce1b1198c589fe1ebdd';

/// See also [getStorageRefreshTokenValue].
@ProviderFor(getStorageRefreshTokenValue)
final getStorageRefreshTokenValueProvider =
    AutoDisposeFutureProvider<String?>.internal(
  getStorageRefreshTokenValue,
  name: r'getStorageRefreshTokenValueProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getStorageRefreshTokenValueHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetStorageRefreshTokenValueRef = AutoDisposeFutureProviderRef<String?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
