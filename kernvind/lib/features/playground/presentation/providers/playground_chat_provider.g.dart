// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playground_chat_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$playgroundChatHash() => r'b71ee7e90fd45d99e1dac4cf2a5d33b36017c975';

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

abstract class _$PlaygroundChat
    extends BuildlessAutoDisposeStreamNotifier<List<PlaygroundChatEntity>> {
  late final String botId;
  late final String token;

  Stream<List<PlaygroundChatEntity>> build({
    required String botId,
    required String token,
  });
}

/// See also [PlaygroundChat].
@ProviderFor(PlaygroundChat)
const playgroundChatProvider = PlaygroundChatFamily();

/// See also [PlaygroundChat].
class PlaygroundChatFamily
    extends Family<AsyncValue<List<PlaygroundChatEntity>>> {
  /// See also [PlaygroundChat].
  const PlaygroundChatFamily();

  /// See also [PlaygroundChat].
  PlaygroundChatProvider call({
    required String botId,
    required String token,
  }) {
    return PlaygroundChatProvider(
      botId: botId,
      token: token,
    );
  }

  @override
  PlaygroundChatProvider getProviderOverride(
    covariant PlaygroundChatProvider provider,
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
  String? get name => r'playgroundChatProvider';
}

/// See also [PlaygroundChat].
class PlaygroundChatProvider extends AutoDisposeStreamNotifierProviderImpl<
    PlaygroundChat, List<PlaygroundChatEntity>> {
  /// See also [PlaygroundChat].
  PlaygroundChatProvider({
    required String botId,
    required String token,
  }) : this._internal(
          () => PlaygroundChat()
            ..botId = botId
            ..token = token,
          from: playgroundChatProvider,
          name: r'playgroundChatProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$playgroundChatHash,
          dependencies: PlaygroundChatFamily._dependencies,
          allTransitiveDependencies:
              PlaygroundChatFamily._allTransitiveDependencies,
          botId: botId,
          token: token,
        );

  PlaygroundChatProvider._internal(
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
  Stream<List<PlaygroundChatEntity>> runNotifierBuild(
    covariant PlaygroundChat notifier,
  ) {
    return notifier.build(
      botId: botId,
      token: token,
    );
  }

  @override
  Override overrideWith(PlaygroundChat Function() create) {
    return ProviderOverride(
      origin: this,
      override: PlaygroundChatProvider._internal(
        () => create()
          ..botId = botId
          ..token = token,
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
  AutoDisposeStreamNotifierProviderElement<PlaygroundChat,
      List<PlaygroundChatEntity>> createElement() {
    return _PlaygroundChatProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PlaygroundChatProvider &&
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
mixin PlaygroundChatRef
    on AutoDisposeStreamNotifierProviderRef<List<PlaygroundChatEntity>> {
  /// The parameter `botId` of this provider.
  String get botId;

  /// The parameter `token` of this provider.
  String get token;
}

class _PlaygroundChatProviderElement
    extends AutoDisposeStreamNotifierProviderElement<PlaygroundChat,
        List<PlaygroundChatEntity>> with PlaygroundChatRef {
  _PlaygroundChatProviderElement(super.provider);

  @override
  String get botId => (origin as PlaygroundChatProvider).botId;
  @override
  String get token => (origin as PlaygroundChatProvider).token;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
