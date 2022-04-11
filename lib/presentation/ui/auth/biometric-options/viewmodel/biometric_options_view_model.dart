import 'package:flutter/foundation.dart';

import '../../../../../app/di/injection.dart';
import '../../../../delegate/loadable.dart';
import '../../../../manager/biometric_manager.dart';

class BiometricOptionsViewModel extends ChangeNotifier with Loadable {
  final biometricManager = getIt.get<BiometricManager>();
}
