// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bot_chat_remote_datasource_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$webSocketchannelHash() => r'b93f4496992c0287e3bf586a6f7553938f36244d';

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
    required int botId,
  }) {
    return WebSocketchannelProvider(
      botId: botId,
    );
  }

  @override
  WebSocketchannelProvider getProviderOverride(
    covariant WebSocketchannelProvider provider,
  ) {
    return call(
      botId: provider.botId,
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
    required int botId,
  }) : this._internal(
          (ref) => webSocketchannel(
            ref as WebSocketchannelRef,
            botId: botId,
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
        );

  WebSocketchannelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.botId,
  }) : super.internal();

  final int botId;

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
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<WebSocketChannel?> createElement() {
    return _WebSocketchannelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WebSocketchannelProvider && other.botId == botId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, botId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin WebSocketchannelRef on AutoDisposeFutureProviderRef<WebSocketChannel?> {
  /// The parameter `botId` of this provider.
  int get botId;
}

class _WebSocketchannelProviderElement
    extends AutoDisposeFutureProviderElement<WebSocketChannel?>
    with WebSocketchannelRef {
  _WebSocketchannelProviderElement(super.provider);

  @override
  int get botId => (origin as WebSocketchannelProvider).botId;
}

String _$botChatRepoHash() => r'6eb8a88acba3c5fad9ca16c8efb25c40f94e29ca';

/// See also [botChatRepo].
@ProviderFor(botChatRepo)
const botChatRepoProvider = BotChatRepoFamily();

/// See also [botChatRepo].
class BotChatRepoFamily extends Family<AsyncValue<BotChatRepositoryImpl?>> {
  /// See also [botChatRepo].
  const BotChatRepoFamily();

  /// See also [botChatRepo].
  BotChatRepoProvider call({
    required int botId,
  }) {
    return BotChatRepoProvider(
      botId: botId,
    );
  }

  @override
  BotChatRepoProvider getProviderOverride(
    covariant BotChatRepoProvider provider,
  ) {
    return call(
      botId: provider.botId,
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
  String? get name => r'botChatRepoProvider';
}

/// See also [botChatRepo].
class BotChatRepoProvider
    extends AutoDisposeFutureProvider<BotChatRepositoryImpl?> {
  /// See also [botChatRepo].
  BotChatRepoProvider({
    required int botId,
  }) : this._internal(
          (ref) => botChatRepo(
            ref as BotChatRepoRef,
            botId: botId,
          ),
          from: botChatRepoProvider,
          name: r'botChatRepoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$botChatRepoHash,
          dependencies: BotChatRepoFamily._dependencies,
          allTransitiveDependencies:
              BotChatRepoFamily._allTransitiveDependencies,
          botId: botId,
        );

  BotChatRepoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.botId,
  }) : super.internal();

  final int botId;

  @override
  Override overrideWith(
    FutureOr<BotChatRepositoryImpl?> Function(BotChatRepoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: BotChatRepoProvider._internal(
        (ref) => create(ref as BotChatRepoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        botId: botId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<BotChatRepositoryImpl?> createElement() {
    return _BotChatRepoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BotChatRepoProvider && other.botId == botId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, botId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin BotChatRepoRef on AutoDisposeFutureProviderRef<BotChatRepositoryImpl?> {
  /// The parameter `botId` of this provider.
  int get botId;
}

class _BotChatRepoProviderElement
    extends AutoDisposeFutureProviderElement<BotChatRepositoryImpl?>
    with BotChatRepoRef {
  _BotChatRepoProviderElement(super.provider);

  @override
  int get botId => (origin as BotChatRepoProvider).botId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
