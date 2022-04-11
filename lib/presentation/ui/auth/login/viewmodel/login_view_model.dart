import 'package:demo/presentation/utils/extensions/string_x.dart';
import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/foundation.dart';

import '../../../../../data/endpoint/security/login.dart';
import '../../../../utils/l10n.dart';

class LoginViewModel extends ChangeNotifier {
  final _countryCode = "994";
  final _maskController = MaskedTextController(mask: "00 000 00 00");

  String _mobile = "";
  String _password = "";

  String? _mobileError;
  String? _passwordError;

  bool _isPasswordHidden = true;

  bool get isPasswordHidden => _isPasswordHidden;

  String? get mobileError => _mobileError;

  String? get passwordError => _passwordError;

  MaskedTextController get mobileController => _maskController;

  bool get isFormValid {
    final hasNoError = _mobileError == null && _passwordError == null;
    final isFieldsValid = _mobile.isValidPhoneNumber && _password.isValidPassword;
    return hasNoError && isFieldsValid;
  }

  togglePasswordVisibility() {
    _isPasswordHidden = !_isPasswordHidden;
    notifyListeners();
  }

  LoginInput get input {
    return LoginInput(
      mobile: _mobile,
      password: _password,
      fcmToken: "",
    );
  }

  updateMobile(String value) {
    _mobile = (_countryCode + value).replaceAll(" ", "");

    if (!_mobile.isValidPhoneNumber) {
      _mobileError = L10n.mobileIsNotValid;
    } else {
      _mobileError = null;
    }

    notifyListeners();
  }

  updatePassword(String value) {
    _password = value;

    if (!_password.isValidPassword) {
      _passwordError = L10n.passwordIsNotValid;
    } else {
      _passwordError = null;
    }

    notifyListeners();
  }
}
