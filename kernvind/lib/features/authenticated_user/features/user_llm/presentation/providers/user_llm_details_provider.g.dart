// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_llm_details_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userLlmDetailsHash() => r'99fea5854d54b60c79b1cb89577e60bf9ad82e43';

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

abstract class _$UserLlmDetails
    extends BuildlessAutoDisposeNotifier<UserLlmDetailsProviderState> {
  late final int userLlmId;

  UserLlmDetailsProviderState build({
    required int userLlmId,
  });
}

/// See also [UserLlmDetails].
@ProviderFor(UserLlmDetails)
const userLlmDetailsProvider = UserLlmDetailsFamily();

/// See also [UserLlmDetails].
class UserLlmDetailsFamily extends Family<UserLlmDetailsProviderState> {
  /// See also [UserLlmDetails].
  const UserLlmDetailsFamily();

  /// See also [UserLlmDetails].
  UserLlmDetailsProvider call({
    required int userLlmId,
  }) {
    return UserLlmDetailsProvider(
      userLlmId: userLlmId,
    );
  }

  @override
  UserLlmDetailsProvider getProviderOverride(
    covariant UserLlmDetailsProvider provider,
  ) {
    return call(
      userLlmId: provider.userLlmId,
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
  String? get name => r'userLlmDetailsProvider';
}

/// See also [UserLlmDetails].
class UserLlmDetailsProvider extends AutoDisposeNotifierProviderImpl<
    UserLlmDetails, UserLlmDetailsProviderState> {
  /// See also [UserLlmDetails].
  UserLlmDetailsProvider({
    required int userLlmId,
  }) : this._internal(
          () => UserLlmDetails()..userLlmId = userLlmId,
          from: userLlmDetailsProvider,
          name: r'userLlmDetailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userLlmDetailsHash,
          dependencies: UserLlmDetailsFamily._dependencies,
          allTransitiveDependencies:
              UserLlmDetailsFamily._allTransitiveDependencies,
          userLlmId: userLlmId,
        );

  UserLlmDetailsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userLlmId,
  }) : super.internal();

  final int userLlmId;

  @override
  UserLlmDetailsProviderState runNotifierBuild(
    covariant UserLlmDetails notifier,
  ) {
    return notifier.build(
      userLlmId: userLlmId,
    );
  }

  @override
  Override overrideWith(UserLlmDetails Function() create) {
    return ProviderOverride(
      origin: this,
      override: UserLlmDetailsProvider._internal(
        () => create()..userLlmId = userLlmId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userLlmId: userLlmId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<UserLlmDetails,
      UserLlmDetailsProviderState> createElement() {
    return _UserLlmDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserLlmDetailsProvider && other.userLlmId == userLlmId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userLlmId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UserLlmDetailsRef
    on AutoDisposeNotifierProviderRef<UserLlmDetailsProviderState> {
  /// The parameter `userLlmId` of this provider.
  int get userLlmId;
}

class _UserLlmDetailsProviderElement extends AutoDisposeNotifierProviderElement<
    UserLlmDetails, UserLlmDetailsProviderState> with UserLlmDetailsRef {
  _UserLlmDetailsProviderElement(super.provider);

  @override
  int get userLlmId => (origin as UserLlmDetailsProvider).userLlmId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
