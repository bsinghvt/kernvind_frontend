// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bot_chat_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$botChatMessageHash() => r'975d3fa2573f5c8c430861466514351c2ad99694';

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

abstract class _$BotChatMessage
    extends BuildlessAutoDisposeStreamNotifier<List<BotChatEntity>> {
  late final int botId;

  Stream<List<BotChatEntity>> build({
    required int botId,
  });
}

/// See also [BotChatMessage].
@ProviderFor(BotChatMessage)
const botChatMessageProvider = BotChatMessageFamily();

/// See also [BotChatMessage].
class BotChatMessageFamily extends Family<AsyncValue<List<BotChatEntity>>> {
  /// See also [BotChatMessage].
  const BotChatMessageFamily();

  /// See also [BotChatMessage].
  BotChatMessageProvider call({
    required int botId,
  }) {
    return BotChatMessageProvider(
      botId: botId,
    );
  }

  @override
  BotChatMessageProvider getProviderOverride(
    covariant BotChatMessageProvider provider,
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
  String? get name => r'botChatMessageProvider';
}

/// See also [BotChatMessage].
class BotChatMessageProvider extends AutoDisposeStreamNotifierProviderImpl<
    BotChatMessage, List<BotChatEntity>> {
  /// See also [BotChatMessage].
  BotChatMessageProvider({
    required int botId,
  }) : this._internal(
          () => BotChatMessage()..botId = botId,
          from: botChatMessageProvider,
          name: r'botChatMessageProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$botChatMessageHash,
          dependencies: BotChatMessageFamily._dependencies,
          allTransitiveDependencies:
              BotChatMessageFamily._allTransitiveDependencies,
          botId: botId,
        );

  BotChatMessageProvider._internal(
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
  Stream<List<BotChatEntity>> runNotifierBuild(
    covariant BotChatMessage notifier,
  ) {
    return notifier.build(
      botId: botId,
    );
  }

  @override
  Override overrideWith(BotChatMessage Function() create) {
    return ProviderOverride(
      origin: this,
      override: BotChatMessageProvider._internal(
        () => create()..botId = botId,
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
  AutoDisposeStreamNotifierProviderElement<BotChatMessage, List<BotChatEntity>>
      createElement() {
    return _BotChatMessageProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BotChatMessageProvider && other.botId == botId;
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
mixin BotChatMessageRef
    on AutoDisposeStreamNotifierProviderRef<List<BotChatEntity>> {
  /// The parameter `botId` of this provider.
  int get botId;
}

class _BotChatMessageProviderElement
    extends AutoDisposeStreamNotifierProviderElement<BotChatMessage,
        List<BotChatEntity>> with BotChatMessageRef {
  _BotChatMessageProviderElement(super.provider);

  @override
  int get botId => (origin as BotChatMessageProvider).botId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
