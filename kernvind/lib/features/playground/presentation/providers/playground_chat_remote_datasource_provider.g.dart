// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playground_chat_remote_datasource_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$webSocketchannelHash() => r'8f4a39de448fbe1d69aebbbcb2b6e38c18b4ba6a';

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

/// See also [webSocketchannel].
@ProviderFor(webSocketchannel)
const webSocketchannelProvider = WebSocketchannelFamily();

/// See also [webSocketchannel].
class WebSocketchannelFamily extends Family<AsyncValue<WebSocketChannel?>> {
  /// See also [webSocketchannel].
  const WebSocketchannelFamily();

  /// See also [webSocketchannel].
  WebSocketchannelProvider call({
    required String botId,
    required String token,
  }) {
    return WebSocketchannelProvider(
      botId: botId,
      token: token,
    );
  }

  @override
  WebSocketchannelProvider getProviderOverride(
    covariant WebSocketchannelProvider provider,
  ) {
    return call(
      botId: provider.botId,
      token: provider.token,
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
  String? get name => r'webSocketchannelProvider';
}

/// See also [webSocketchannel].
class WebSocketchannelProvider
    extends AutoDisposeFutureProvider<WebSocketChannel?> {
  /// See also [webSocketchannel].
  WebSocketchannelProvider({
    required String botId,
    required String token,
  }) : this._internal(
          (ref) => webSocketchannel(
            ref as WebSocketchannelRef,
            botId: botId,
            token: token,
          ),
          from: webSocketchannelProvider,
          name: r'webSocketchannelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$webSocketchannelHash,
          dependencies: WebSocketchannelFamily._dependencies,
          allTransitiveDependencies:
              WebSocketchannelFamily._allTransitiveDependencies,
          botId: botId,
          token: token,
        );

  WebSocketchannelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.botId,
    required this.token,
  }) : super.internal();

  final String botId;
  final String token;

  @override
  Override overrideWith(
    FutureOr<WebSocketChannel?> Function(WebSocketchannelRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: WebSocketchannelProvider._internal(
        (ref) => create(ref as WebSocketchannelRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        botId: botId,
        token: token,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<WebSocketChannel?> createElement() {
    return _WebSocketchannelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WebSocketchannelProvider &&
        other.botId == botId &&
        other.token == token;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, botId.hashCode);
    hash = _SystemHash.combine(hash, token.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin WebSocketchannelRef on AutoDisposeFutureProviderRef<WebSocketChannel?> {
  /// The parameter `botId` of this provider.
  String get botId;

  /// The parameter `token` of this provider.
  String get token;
}

class _WebSocketchannelProviderElement
    extends AutoDisposeFutureProviderElement<WebSocketChannel?>
    with WebSocketchannelRef {
  _WebSocketchannelProviderElement(super.provider);

  @override
  String get botId => (origin as WebSocketchannelProvider).botId;
  @override
  String get token => (origin as WebSocketchannelProvider).token;
}

String _$playgroundChatRepoHash() =>
    r'e2e2439f07db8a9422d57359fcbf5d8f88607cee';

/// See also [playgroundChatRepo].
@ProviderFor(playgroundChatRepo)
const playgroundChatRepoProvider = PlaygroundChatRepoFamily();

/// See also [playgroundChatRepo].
class PlaygroundChatRepoFamily
    extends Family<AsyncValue<PlaygroundChatRepoImpl?>> {
  /// See also [playgroundChatRepo].
  const PlaygroundChatRepoFamily();

  /// See also [playgroundChatRepo].
  PlaygroundChatRepoProvider call({
    required String botId,
    required String token,
  }) {
    return PlaygroundChatRepoProvider(
      botId: botId,
      token: token,
    );
  }

  @override
  PlaygroundChatRepoProvider getProviderOverride(
    covariant PlaygroundChatRepoProvider provider,
  ) {
    return call(
      botId: provider.botId,
      token: provider.token,
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
  String? get name => r'playgroundChatRepoProvider';
}

/// See also [playgroundChatRepo].
class PlaygroundChatRepoProvider
    extends AutoDisposeFutureProvider<PlaygroundChatRepoImpl?> {
  /// See also [playgroundChatRepo].
  PlaygroundChatRepoProvider({
    required String botId,
    required String token,
  }) : this._internal(
          (ref) => playgroundChatRepo(
            ref as PlaygroundChatRepoRef,
            botId: botId,
            token: token,
          ),
          from: playgroundChatRepoProvider,
          name: r'playgroundChatRepoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$playgroundChatRepoHash,
          dependencies: PlaygroundChatRepoFamily._dependencies,
          allTransitiveDependencies:
              PlaygroundChatRepoFamily._allTransitiveDependencies,
          botId: botId,
          token: token,
        );

  PlaygroundChatRepoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.botId,
    required this.token,
  }) : super.internal();

  final String botId;
  final String token;

  @override
  Override overrideWith(
    FutureOr<PlaygroundChatRepoImpl?> Function(PlaygroundChatRepoRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PlaygroundChatRepoProvider._internal(
        (ref) => create(ref as PlaygroundChatRepoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        botId: botId,
        token: token,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<PlaygroundChatRepoImpl?> createElement() {
    return _PlaygroundChatRepoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PlaygroundChatRepoProvider &&
        other.botId == botId &&
        other.token == token;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, botId.hashCode);
    hash = _SystemHash.combine(hash, token.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PlaygroundChatRepoRef
    on AutoDisposeFutureProviderRef<PlaygroundChatRepoImpl?> {
  /// The parameter `botId` of this provider.
  String get botId;

  /// The parameter `token` of this provider.
  String get token;
}

class _PlaygroundChatRepoProviderElement
    extends AutoDisposeFutureProviderElement<PlaygroundChatRepoImpl?>
    with PlaygroundChatRepoRef {
  _PlaygroundChatRepoProviderElement(super.provider);

  @override
  String get botId => (origin as PlaygroundChatRepoProvider).botId;
  @override
  String get token => (origin as PlaygroundChatRepoProvider).token;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
