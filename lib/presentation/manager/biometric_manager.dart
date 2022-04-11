import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:local_auth/local_auth.dart';

class BiometricManager {
  final LocalAuthentication localAuthentication;

  BiometricManager(this.localAuthentication);

  Future<bool> isBiometricAvailable() async {
    return await localAuthentication.canCheckBiometrics;
  }

  Future<bool> isDeviceSupported() async {
    return await localAuthentication.isDeviceSupported();
  }

  Future<List<BiometricType>> availableBiometrics() async {
    return await localAuthentication.getAvailableBiometrics();
  }

  Future<BiometricType?> currentBiometric() async {
    if (Platform.isIOS) {
      final biometrics = await availableBiometrics();

      if (biometrics.contains(BiometricType.face)) {
        return BiometricType.face;
      } else if (biometrics.contains(BiometricType.fingerprint)) {
        return BiometricType.fingerprint;
      }
    }

    return null;
  }

  Future<bool> authenticate() async {
    try {
      if (await isDeviceSupported()) {
        return await localAuthentication.authenticate(
          localizedReason: "Need to authenticate for entering app",
        );
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }

    return false;
  }

  Future<bool> stopBiometrics() async {
    return await localAuthentication.stopAuthentication();
  }
}
