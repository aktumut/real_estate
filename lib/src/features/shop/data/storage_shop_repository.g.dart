// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storage_shop_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$storageShopRepositoryHash() =>
    r'd216c296045219550133af0cdeec1ce2bdeb1d55';

/// See also [storageShopRepository].
@ProviderFor(storageShopRepository)
final storageShopRepositoryProvider =
    AutoDisposeProvider<StorageShopRepository>.internal(
  storageShopRepository,
  name: r'storageShopRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$storageShopRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef StorageShopRepositoryRef
    = AutoDisposeProviderRef<StorageShopRepository>;
String _$saveHousesToStorageHash() =>
    r'a600c02ca772c869b3534711d6e5ecef11059bd6';

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

/// See also [saveHousesToStorage].
@ProviderFor(saveHousesToStorage)
const saveHousesToStorageProvider = SaveHousesToStorageFamily();

/// See also [saveHousesToStorage].
class SaveHousesToStorageFamily extends Family<AsyncValue<void>> {
  /// See also [saveHousesToStorage].
  const SaveHousesToStorageFamily();

  /// See also [saveHousesToStorage].
  SaveHousesToStorageProvider call(
    List<House> houses,
  ) {
    return SaveHousesToStorageProvider(
      houses,
    );
  }

  @override
  SaveHousesToStorageProvider getProviderOverride(
    covariant SaveHousesToStorageProvider provider,
  ) {
    return call(
      provider.houses,
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
  String? get name => r'saveHousesToStorageProvider';
}

/// See also [saveHousesToStorage].
class SaveHousesToStorageProvider extends AutoDisposeFutureProvider<void> {
  /// See also [saveHousesToStorage].
  SaveHousesToStorageProvider(
    List<House> houses,
  ) : this._internal(
          (ref) => saveHousesToStorage(
            ref as SaveHousesToStorageRef,
            houses,
          ),
          from: saveHousesToStorageProvider,
          name: r'saveHousesToStorageProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$saveHousesToStorageHash,
          dependencies: SaveHousesToStorageFamily._dependencies,
          allTransitiveDependencies:
              SaveHousesToStorageFamily._allTransitiveDependencies,
          houses: houses,
        );

  SaveHousesToStorageProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.houses,
  }) : super.internal();

  final List<House> houses;

  @override
  Override overrideWith(
    FutureOr<void> Function(SaveHousesToStorageRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SaveHousesToStorageProvider._internal(
        (ref) => create(ref as SaveHousesToStorageRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        houses: houses,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _SaveHousesToStorageProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SaveHousesToStorageProvider && other.houses == houses;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, houses.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SaveHousesToStorageRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `houses` of this provider.
  List<House> get houses;
}

class _SaveHousesToStorageProviderElement
    extends AutoDisposeFutureProviderElement<void> with SaveHousesToStorageRef {
  _SaveHousesToStorageProviderElement(super.provider);

  @override
  List<House> get houses => (origin as SaveHousesToStorageProvider).houses;
}

String _$getHousesFromStorageHash() =>
    r'e2dddef6cd47073fc62cc24eacb8afce0038577f';

/// See also [getHousesFromStorage].
@ProviderFor(getHousesFromStorage)
final getHousesFromStorageProvider =
    AutoDisposeFutureProvider<List<House>>.internal(
  getHousesFromStorage,
  name: r'getHousesFromStorageProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getHousesFromStorageHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetHousesFromStorageRef = AutoDisposeFutureProviderRef<List<House>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
