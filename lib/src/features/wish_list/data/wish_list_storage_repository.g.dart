// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wish_list_storage_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$wishListStorageRepositoryHash() =>
    r'9425baf95083376c90f875014c50ad0c4dabc08b';

/// See also [wishListStorageRepository].
@ProviderFor(wishListStorageRepository)
final wishListStorageRepositoryProvider =
    AutoDisposeProvider<WishListStorageRepository>.internal(
  wishListStorageRepository,
  name: r'wishListStorageRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$wishListStorageRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef WishListStorageRepositoryRef
    = AutoDisposeProviderRef<WishListStorageRepository>;
String _$isHouseLikedHash() => r'e6f87b30feb722d93fbff38856b4a9ad0bacb487';

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

/// See also [isHouseLiked].
@ProviderFor(isHouseLiked)
const isHouseLikedProvider = IsHouseLikedFamily();

/// See also [isHouseLiked].
class IsHouseLikedFamily extends Family<AsyncValue<bool>> {
  /// See also [isHouseLiked].
  const IsHouseLikedFamily();

  /// See also [isHouseLiked].
  IsHouseLikedProvider call(
    House house,
  ) {
    return IsHouseLikedProvider(
      house,
    );
  }

  @override
  IsHouseLikedProvider getProviderOverride(
    covariant IsHouseLikedProvider provider,
  ) {
    return call(
      provider.house,
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
  String? get name => r'isHouseLikedProvider';
}

/// See also [isHouseLiked].
class IsHouseLikedProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [isHouseLiked].
  IsHouseLikedProvider(
    House house,
  ) : this._internal(
          (ref) => isHouseLiked(
            ref as IsHouseLikedRef,
            house,
          ),
          from: isHouseLikedProvider,
          name: r'isHouseLikedProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$isHouseLikedHash,
          dependencies: IsHouseLikedFamily._dependencies,
          allTransitiveDependencies:
              IsHouseLikedFamily._allTransitiveDependencies,
          house: house,
        );

  IsHouseLikedProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.house,
  }) : super.internal();

  final House house;

  @override
  Override overrideWith(
    FutureOr<bool> Function(IsHouseLikedRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: IsHouseLikedProvider._internal(
        (ref) => create(ref as IsHouseLikedRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        house: house,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _IsHouseLikedProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is IsHouseLikedProvider && other.house == house;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, house.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin IsHouseLikedRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `house` of this provider.
  House get house;
}

class _IsHouseLikedProviderElement
    extends AutoDisposeFutureProviderElement<bool> with IsHouseLikedRef {
  _IsHouseLikedProviderElement(super.provider);

  @override
  House get house => (origin as IsHouseLikedProvider).house;
}

String _$addDiscardHouseFromWishlistHash() =>
    r'0fc0cb5cab40584197510d2c58eadf8b4aa5e1ff';

/// See also [addDiscardHouseFromWishlist].
@ProviderFor(addDiscardHouseFromWishlist)
const addDiscardHouseFromWishlistProvider = AddDiscardHouseFromWishlistFamily();

/// See also [addDiscardHouseFromWishlist].
class AddDiscardHouseFromWishlistFamily extends Family<AsyncValue<void>> {
  /// See also [addDiscardHouseFromWishlist].
  const AddDiscardHouseFromWishlistFamily();

  /// See also [addDiscardHouseFromWishlist].
  AddDiscardHouseFromWishlistProvider call(
    House house,
  ) {
    return AddDiscardHouseFromWishlistProvider(
      house,
    );
  }

  @override
  AddDiscardHouseFromWishlistProvider getProviderOverride(
    covariant AddDiscardHouseFromWishlistProvider provider,
  ) {
    return call(
      provider.house,
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
  String? get name => r'addDiscardHouseFromWishlistProvider';
}

/// See also [addDiscardHouseFromWishlist].
class AddDiscardHouseFromWishlistProvider
    extends AutoDisposeFutureProvider<void> {
  /// See also [addDiscardHouseFromWishlist].
  AddDiscardHouseFromWishlistProvider(
    House house,
  ) : this._internal(
          (ref) => addDiscardHouseFromWishlist(
            ref as AddDiscardHouseFromWishlistRef,
            house,
          ),
          from: addDiscardHouseFromWishlistProvider,
          name: r'addDiscardHouseFromWishlistProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$addDiscardHouseFromWishlistHash,
          dependencies: AddDiscardHouseFromWishlistFamily._dependencies,
          allTransitiveDependencies:
              AddDiscardHouseFromWishlistFamily._allTransitiveDependencies,
          house: house,
        );

  AddDiscardHouseFromWishlistProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.house,
  }) : super.internal();

  final House house;

  @override
  Override overrideWith(
    FutureOr<void> Function(AddDiscardHouseFromWishlistRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AddDiscardHouseFromWishlistProvider._internal(
        (ref) => create(ref as AddDiscardHouseFromWishlistRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        house: house,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _AddDiscardHouseFromWishlistProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AddDiscardHouseFromWishlistProvider && other.house == house;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, house.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AddDiscardHouseFromWishlistRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `house` of this provider.
  House get house;
}

class _AddDiscardHouseFromWishlistProviderElement
    extends AutoDisposeFutureProviderElement<void>
    with AddDiscardHouseFromWishlistRef {
  _AddDiscardHouseFromWishlistProviderElement(super.provider);

  @override
  House get house => (origin as AddDiscardHouseFromWishlistProvider).house;
}

String _$getWishListHousesHash() => r'3765e718963ccf66c99c83ba6c33bd86899c0728';

/// See also [getWishListHouses].
@ProviderFor(getWishListHouses)
final getWishListHousesProvider =
    AutoDisposeFutureProvider<List<House>>.internal(
  getWishListHouses,
  name: r'getWishListHousesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getWishListHousesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetWishListHousesRef = AutoDisposeFutureProviderRef<List<House>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
