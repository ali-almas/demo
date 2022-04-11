import 'package:shared_preferences/shared_preferences.dart';

import '../../../presentation/ui/main/main/viewmodel/main_view_model.dart';

class PreferencesService {
  static PreferencesService? _instance;
  static SharedPreferences? _preferences;

  PreferencesService._internal();

  static Future<PreferencesService> get instance async {
    _instance ??= PreferencesService._internal();

    _preferences ??= await SharedPreferences.getInstance();

    return _instance!;
  }

  final _accessToken = "access-token";
  final _fcmToken = "fcm-token";
  final _mobile = "mobile-number";
  final _onBoardingPassed = "onboardingPassed";
  final _authorizationPassed = "authorizationPassed";
  final _entranceState = "entranceState";
  final _pin = "pin";
  final _pinPassed = "pinPassed";

  setOnBoardingPassed(bool value) async => await _preferences?.setBool(_onBoardingPassed, value);
  setAccessToken(String value) async => await _preferences?.setString(_accessToken, "Bearer $value");
  setFcmToken(String value) async => await _preferences?.setString(_fcmToken, value);
  setAuthorizationPassed(bool value) async => await _preferences?.setBool(_authorizationPassed, value);
  setEntranceState(bool value) async => await _preferences?.setBool(_entranceState, value);
  setPin(String value) async => await _preferences?.setString(_pin, value);
  setPinPassed(bool value) async => await _preferences?.setBool(_pinPassed, value);
  setMobile(String value) async => await _preferences?.setString(_mobile, value);

  bool get wasOnBoardingPassed => _preferences?.getBool(_onBoardingPassed) ?? false;
  bool get wasAuthorizationPassed => _preferences?.getBool(_authorizationPassed) ?? false;
  String? get accessToken => _preferences?.getString(_accessToken);
  String get fcmToken => _preferences?.getString(_fcmToken) ?? "";
  EntranceState get entranceState => _preferences?.getBool(_entranceState) == true ? EntranceState.registered : EntranceState.unregistered;
  bool get hasPin => _preferences?.getString(_pin) != null;
  bool get wasPinPassed => _preferences?.getBool(_pinPassed) ?? false;
  String get mobile => _preferences?.getString(_mobile) ?? "";

  Future<bool?> clear() async => await _preferences?.clear();
}
