// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'house_card_distance_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$houseCardDistanceControllerHash() =>
    r'1d772b5682e447059a48991a4919f86bee5c87ab';

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

abstract class _$HouseCardDistanceController
    extends BuildlessAutoDisposeAsyncNotifier<double?> {
  late final House house;

  FutureOr<double?> build({
    required House house,
  });
}

/// See also [HouseCardDistanceController].
@ProviderFor(HouseCardDistanceController)
const houseCardDistanceControllerProvider = HouseCardDistanceControllerFamily();

/// See also [HouseCardDistanceController].
class HouseCardDistanceControllerFamily extends Family<AsyncValue<double?>> {
  /// See also [HouseCardDistanceController].
  const HouseCardDistanceControllerFamily();

  /// See also [HouseCardDistanceController].
  HouseCardDistanceControllerProvider call({
    required House house,
  }) {
    return HouseCardDistanceControllerProvider(
      house: house,
    );
  }

  @override
  HouseCardDistanceControllerProvider getProviderOverride(
    covariant HouseCardDistanceControllerProvider provider,
  ) {
    return call(
      house: provider.house,
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
  String? get name => r'houseCardDistanceControllerProvider';
}

/// See also [HouseCardDistanceController].
class HouseCardDistanceControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<HouseCardDistanceController,
        double?> {
  /// See also [HouseCardDistanceController].
  HouseCardDistanceControllerProvider({
    required House house,
  }) : this._internal(
          () => HouseCardDistanceController()..house = house,
          from: houseCardDistanceControllerProvider,
          name: r'houseCardDistanceControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$houseCardDistanceControllerHash,
          dependencies: HouseCardDistanceControllerFamily._dependencies,
          allTransitiveDependencies:
              HouseCardDistanceControllerFamily._allTransitiveDependencies,
          house: house,
        );

  HouseCardDistanceControllerProvider._internal(
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
  FutureOr<double?> runNotifierBuild(
    covariant HouseCardDistanceController notifier,
  ) {
    return notifier.build(
      house: house,
    );
  }

  @override
  Override overrideWith(HouseCardDistanceController Function() create) {
    return ProviderOverride(
      origin: this,
      override: HouseCardDistanceControllerProvider._internal(
        () => create()..house = house,
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
  AutoDisposeAsyncNotifierProviderElement<HouseCardDistanceController, double?>
      createElement() {
    return _HouseCardDistanceControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HouseCardDistanceControllerProvider && other.house == house;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, house.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin HouseCardDistanceControllerRef
    on AutoDisposeAsyncNotifierProviderRef<double?> {
  /// The parameter `house` of this provider.
  House get house;
}

class _HouseCardDistanceControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<HouseCardDistanceController,
        double?> with HouseCardDistanceControllerRef {
  _HouseCardDistanceControllerProviderElement(super.provider);

  @override
  House get house => (origin as HouseCardDistanceControllerProvider).house;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
