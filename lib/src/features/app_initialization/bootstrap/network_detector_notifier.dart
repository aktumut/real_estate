import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// *  This file defines the NetworkDetectorNotifier, which is a StateNotifier
// *  that provides information about the device's network connectivity status.
// *
// *  The NetworkDetectorNotifier listens for changes in network connectivity
// *  and updates its state accordingly.

enum NetworkStatus { notDetermined, on, off }

class NetworkDetectorNotifier extends StateNotifier<NetworkStatus> {
  NetworkDetectorNotifier() : super(NetworkStatus.notDetermined) {
    lastResult = NetworkStatus.notDetermined;

    Connectivity()
        .onConnectivityChanged
        .listen((List<ConnectivityResult> results) {
      var newState = NetworkStatus.notDetermined;

      if (results.isNotEmpty) {
        for (final result in results) {
          if (result == ConnectivityResult.mobile ||
              result == ConnectivityResult.wifi ||
              result == ConnectivityResult.ethernet) {
            newState = NetworkStatus.on;

            break;
          } else {
            newState = NetworkStatus.off;
            break;
          }
        }
      } else {
        newState = NetworkStatus.off;
      }

      if (newState != state) {
        state = newState;
      }
    });
  }

  late NetworkStatus lastResult;
}

final networkDetectorProvider =
    StateNotifierProvider<NetworkDetectorNotifier, NetworkStatus>((ref) {
  return NetworkDetectorNotifier();
});
