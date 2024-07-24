// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'house_feed_search_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$houseFeedSearchControllerHash() =>
    r'2378a3e426c097e45c957e01c3ab16c2f9bfa874';

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

abstract class _$HouseFeedSearchController
    extends BuildlessAutoDisposeAsyncNotifier<List<House>> {
  late final String query;

  FutureOr<List<House>> build({
    required String query,
  });
}

/// See also [HouseFeedSearchController].
@ProviderFor(HouseFeedSearchController)
const houseFeedSearchControllerProvider = HouseFeedSearchControllerFamily();

/// See also [HouseFeedSearchController].
class HouseFeedSearchControllerFamily extends Family<AsyncValue<List<House>>> {
  /// See also [HouseFeedSearchController].
  const HouseFeedSearchControllerFamily();

  /// See also [HouseFeedSearchController].
  HouseFeedSearchControllerProvider call({
    required String query,
  }) {
    return HouseFeedSearchControllerProvider(
      query: query,
    );
  }

  @override
  HouseFeedSearchControllerProvider getProviderOverride(
    covariant HouseFeedSearchControllerProvider provider,
  ) {
    return call(
      query: provider.query,
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
  String? get name => r'houseFeedSearchControllerProvider';
}

/// See also [HouseFeedSearchController].
class HouseFeedSearchControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<HouseFeedSearchController,
        List<House>> {
  /// See also [HouseFeedSearchController].
  HouseFeedSearchControllerProvider({
    required String query,
  }) : this._internal(
          () => HouseFeedSearchController()..query = query,
          from: houseFeedSearchControllerProvider,
          name: r'houseFeedSearchControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$houseFeedSearchControllerHash,
          dependencies: HouseFeedSearchControllerFamily._dependencies,
          allTransitiveDependencies:
              HouseFeedSearchControllerFamily._allTransitiveDependencies,
          query: query,
        );

  HouseFeedSearchControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.query,
  }) : super.internal();

  final String query;

  @override
  FutureOr<List<House>> runNotifierBuild(
    covariant HouseFeedSearchController notifier,
  ) {
    return notifier.build(
      query: query,
    );
  }

  @override
  Override overrideWith(HouseFeedSearchController Function() create) {
    return ProviderOverride(
      origin: this,
      override: HouseFeedSearchControllerProvider._internal(
        () => create()..query = query,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        query: query,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<HouseFeedSearchController,
      List<House>> createElement() {
    return _HouseFeedSearchControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HouseFeedSearchControllerProvider && other.query == query;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin HouseFeedSearchControllerRef
    on AutoDisposeAsyncNotifierProviderRef<List<House>> {
  /// The parameter `query` of this provider.
  String get query;
}

class _HouseFeedSearchControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<HouseFeedSearchController,
        List<House>> with HouseFeedSearchControllerRef {
  _HouseFeedSearchControllerProviderElement(super.provider);

  @override
  String get query => (origin as HouseFeedSearchControllerProvider).query;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
