import 'package:flutter_riverpod/flutter_riverpod.dart';

// * This file defines the rebuildIsLikedProvider, which is a Riverpod
// * StateProvider that is used to trigger a rebuild of the IsLikedController
// * provider.
// *
// * The rebuildIsLikedProvider is a simple counter that is incremented whenever
// * the wishlist is updated.
// *
// * This causes the IsLikedController provider to rebuild and update its state,
// * which in turn updates the UI.

final rebuildIsLikedProvider = StateProvider<int>((ref) => 0);
