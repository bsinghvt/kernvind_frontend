// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datasource_details_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$datasourceDetailsHash() => r'2dd39c96868ed68a9d34a2ba4bc02c00480aeb33';

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

abstract class _$DatasourceDetails
    extends BuildlessAutoDisposeNotifier<DatasourceDetailsProviderState> {
  late final int datasourceId;

  DatasourceDetailsProviderState build({
    required int datasourceId,
  });
}

/// See also [DatasourceDetails].
@ProviderFor(DatasourceDetails)
const datasourceDetailsProvider = DatasourceDetailsFamily();

/// See also [DatasourceDetails].
class DatasourceDetailsFamily extends Family<DatasourceDetailsProviderState> {
  /// See also [DatasourceDetails].
  const DatasourceDetailsFamily();

  /// See also [DatasourceDetails].
  DatasourceDetailsProvider call({
    required int datasourceId,
  }) {
    return DatasourceDetailsProvider(
      datasourceId: datasourceId,
    );
  }

  @override
  DatasourceDetailsProvider getProviderOverride(
    covariant DatasourceDetailsProvider provider,
  ) {
    return call(
      datasourceId: provider.datasourceId,
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
  String? get name => r'datasourceDetailsProvider';
}

/// See also [DatasourceDetails].
class DatasourceDetailsProvider extends AutoDisposeNotifierProviderImpl<
    DatasourceDetails, DatasourceDetailsProviderState> {
  /// See also [DatasourceDetails].
  DatasourceDetailsProvider({
    required int datasourceId,
  }) : this._internal(
          () => DatasourceDetails()..datasourceId = datasourceId,
          from: datasourceDetailsProvider,
          name: r'datasourceDetailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$datasourceDetailsHash,
          dependencies: DatasourceDetailsFamily._dependencies,
          allTransitiveDependencies:
              DatasourceDetailsFamily._allTransitiveDependencies,
          datasourceId: datasourceId,
        );

  DatasourceDetailsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.datasourceId,
  }) : super.internal();

  final int datasourceId;

  @override
  DatasourceDetailsProviderState runNotifierBuild(
    covariant DatasourceDetails notifier,
  ) {
    return notifier.build(
      datasourceId: datasourceId,
    );
  }

  @override
  Override overrideWith(DatasourceDetails Function() create) {
    return ProviderOverride(
      origin: this,
      override: DatasourceDetailsProvider._internal(
        () => create()..datasourceId = datasourceId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        datasourceId: datasourceId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<DatasourceDetails,
      DatasourceDetailsProviderState> createElement() {
    return _DatasourceDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DatasourceDetailsProvider &&
        other.datasourceId == datasourceId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, datasourceId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DatasourceDetailsRef
    on AutoDisposeNotifierProviderRef<DatasourceDetailsProviderState> {
  /// The parameter `datasourceId` of this provider.
  int get datasourceId;
}

class _DatasourceDetailsProviderElement
    extends AutoDisposeNotifierProviderElement<DatasourceDetails,
        DatasourceDetailsProviderState> with DatasourceDetailsRef {
  _DatasourceDetailsProviderElement(super.provider);

  @override
  int get datasourceId => (origin as DatasourceDetailsProvider).datasourceId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
