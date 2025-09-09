// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bot_details_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$botDetailsHash() => r'06f27146e8502708fcb461c5755d58c959979590';

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

abstract class _$BotDetails
    extends BuildlessAutoDisposeNotifier<BotDetailsState> {
  late final int botId;

  BotDetailsState build({
    required int botId,
  });
}

/// See also [BotDetails].
@ProviderFor(BotDetails)
const botDetailsProvider = BotDetailsFamily();

/// See also [BotDetails].
class BotDetailsFamily extends Family<BotDetailsState> {
  /// See also [BotDetails].
  const BotDetailsFamily();

  /// See also [BotDetails].
  BotDetailsProvider call({
    required int botId,
  }) {
    return BotDetailsProvider(
      botId: botId,
    );
  }

  @override
  BotDetailsProvider getProviderOverride(
    covariant BotDetailsProvider provider,
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
  String? get name => r'botDetailsProvider';
}

/// See also [BotDetails].
class BotDetailsProvider
    extends AutoDisposeNotifierProviderImpl<BotDetails, BotDetailsState> {
  /// See also [BotDetails].
  BotDetailsProvider({
    required int botId,
  }) : this._internal(
          () => BotDetails()..botId = botId,
          from: botDetailsProvider,
          name: r'botDetailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$botDetailsHash,
          dependencies: BotDetailsFamily._dependencies,
          allTransitiveDependencies:
              BotDetailsFamily._allTransitiveDependencies,
          botId: botId,
        );

  BotDetailsProvider._internal(
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
  BotDetailsState runNotifierBuild(
    covariant BotDetails notifier,
  ) {
    return notifier.build(
      botId: botId,
    );
  }

  @override
  Override overrideWith(BotDetails Function() create) {
    return ProviderOverride(
      origin: this,
      override: BotDetailsProvider._internal(
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
  AutoDisposeNotifierProviderElement<BotDetails, BotDetailsState>
      createElement() {
    return _BotDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BotDetailsProvider && other.botId == botId;
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
mixin BotDetailsRef on AutoDisposeNotifierProviderRef<BotDetailsState> {
  /// The parameter `botId` of this provider.
  int get botId;
}

class _BotDetailsProviderElement
    extends AutoDisposeNotifierProviderElement<BotDetails, BotDetailsState>
    with BotDetailsRef {
  _BotDetailsProviderElement(super.provider);

  @override
  int get botId => (origin as BotDetailsProvider).botId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
