// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$shopRepositoryHash() => r'45cab638fd4256a8ac6ea3dc0825b9b08284c4d8';

/// See also [shopRepository].
@ProviderFor(shopRepository)
final shopRepositoryProvider = AutoDisposeProvider<ShopRepository>.internal(
  shopRepository,
  name: r'shopRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$shopRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ShopRepositoryRef = AutoDisposeProviderRef<ShopRepository>;
String _$fetchHousesHash() => r'37be407a74badd8c17b1a0dbbdf35ca892bbba5b';

/// See also [fetchHouses].
@ProviderFor(fetchHouses)
final fetchHousesProvider = AutoDisposeFutureProvider<List<House>>.internal(
  fetchHouses,
  name: r'fetchHousesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$fetchHousesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FetchHousesRef = AutoDisposeFutureProviderRef<List<House>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
