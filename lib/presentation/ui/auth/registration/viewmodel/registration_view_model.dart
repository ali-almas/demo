import 'package:demo/presentation/utils/extensions/string_x.dart';
import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../data/endpoint/security/registration.dart';
import '../../../../utils/l10n.dart';
import '../../change-password/viewmodel/change_password_view_model.dart';

class RegistrationViewModel extends ChangeNotifier {
  final _countryCode = "994";
  final _maskController = MaskedTextController(mask: "00 000 00 00");

  String _mobile = "";
  String _password = "";
  String _matchingPassword = "";

  String? _mobileError;
  String? _passwordError;
  String? _matchingPasswordError;

  bool _checkBoxValue = false;
  bool _isPasswordHidden = true;
  bool _isAgainPasswordHidden = true;

  String? get mobileError => _mobileError;
  String? get passwordError => _passwordError;
  String? get matchingPasswordError => _matchingPasswordError;

  bool get isPasswordHidden => _isPasswordHidden;
  bool get isAgainPasswordHidden => _isAgainPasswordHidden;
  bool get checkBoxValue => _checkBoxValue;

  MaskedTextController get mobileController => _maskController;

  bool get isFormValid {
    final hasNoError = _mobileError == null && _passwordError == null && _matchingPasswordError == null;
    final isFieldsValid = _mobile.isValidPhoneNumber && _password.isValidPassword && _matchingPassword == _password && _checkBoxValue == true;
    return hasNoError && isFieldsValid;
  }

  RegistrationInput get input {
    return RegistrationInput(
      mobile: _mobile,
      password: _password,
      matchingPassword: _matchingPassword,
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

  updateMatchingPassword(String value) {
    _matchingPassword = value;

    if (_matchingPassword != _password) {
      _matchingPasswordError = L10n.passwordDoesNotMatch;
    } else {
      _matchingPasswordError = null;
    }
    notifyListeners();
  }

  toggleCheckbox(bool value) {
    _checkBoxValue = value;
    notifyListeners();
  }

  togglePasswordVisibility(PasswordFields passwordFields) {
    if (passwordFields == PasswordFields.up) {
      _isPasswordHidden = !_isPasswordHidden;
    } else if (passwordFields == PasswordFields.down) {
      _isAgainPasswordHidden = !_isAgainPasswordHidden;
    }
    notifyListeners();
  }
}
