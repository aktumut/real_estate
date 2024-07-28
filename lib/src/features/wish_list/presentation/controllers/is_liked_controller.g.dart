// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'is_liked_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$isLikedControllerHash() => r'308aa2e1efdc4d3da34d70ee98818127d5dd2d86';

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

abstract class _$IsLikedController
    extends BuildlessAutoDisposeAsyncNotifier<bool> {
  late final House house;

  FutureOr<bool> build({
    required House house,
  });
}

/// See also [IsLikedController].
@ProviderFor(IsLikedController)
const isLikedControllerProvider = IsLikedControllerFamily();

/// See also [IsLikedController].
class IsLikedControllerFamily extends Family<AsyncValue<bool>> {
  /// See also [IsLikedController].
  const IsLikedControllerFamily();

  /// See also [IsLikedController].
  IsLikedControllerProvider call({
    required House house,
  }) {
    return IsLikedControllerProvider(
      house: house,
    );
  }

  @override
  IsLikedControllerProvider getProviderOverride(
    covariant IsLikedControllerProvider provider,
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
  String? get name => r'isLikedControllerProvider';
}

/// See also [IsLikedController].
class IsLikedControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<IsLikedController, bool> {
  /// See also [IsLikedController].
  IsLikedControllerProvider({
    required House house,
  }) : this._internal(
          () => IsLikedController()..house = house,
          from: isLikedControllerProvider,
          name: r'isLikedControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$isLikedControllerHash,
          dependencies: IsLikedControllerFamily._dependencies,
          allTransitiveDependencies:
              IsLikedControllerFamily._allTransitiveDependencies,
          house: house,
        );

  IsLikedControllerProvider._internal(
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
  FutureOr<bool> runNotifierBuild(
    covariant IsLikedController notifier,
  ) {
    return notifier.build(
      house: house,
    );
  }

  @override
  Override overrideWith(IsLikedController Function() create) {
    return ProviderOverride(
      origin: this,
      override: IsLikedControllerProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<IsLikedController, bool>
      createElement() {
    return _IsLikedControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is IsLikedControllerProvider && other.house == house;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, house.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin IsLikedControllerRef on AutoDisposeAsyncNotifierProviderRef<bool> {
  /// The parameter `house` of this provider.
  House get house;
}

class _IsLikedControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<IsLikedController, bool>
    with IsLikedControllerRef {
  _IsLikedControllerProviderElement(super.provider);

  @override
  House get house => (origin as IsLikedControllerProvider).house;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
