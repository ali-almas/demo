import 'package:demo/presentation/utils/extensions/string_x.dart';
import 'package:flutter/material.dart';

import '../../../../../data/endpoint/security/change_password.dart';
import '../../../../utils/l10n.dart';

enum PasswordFields { up, down }

class ChangePasswordViewModel extends ChangeNotifier {
  final String _confirmationToken;

  ChangePasswordViewModel(this._confirmationToken);

  String _password = "";
  String _matchingPassword = "";

  bool _isPasswordHidden = true;
  bool _isAgainPasswordHidden = true;

  String? _passwordError;
  String? _matchingPasswordError;

  String? get passwordError => _passwordError;

  String? get matchingPasswordError => _matchingPasswordError;

  bool get isPasswordHidden => _isPasswordHidden;

  bool get isAgainPasswordHidden => _isAgainPasswordHidden;

  bool get isFormValid {
    final hasNoError = _passwordError == null && _matchingPasswordError == null;
    final isFieldsValid = _password.isValidPassword && _matchingPassword == _password;
    return hasNoError && isFieldsValid;
  }

  ChangePasswordInput get input {
    return ChangePasswordInput(
      confirmationToken: _confirmationToken,
      password: _password,
      matchingPassword: _matchingPassword,
    );
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

  togglePasswordVisibility(PasswordFields passwordFields) {
    if (passwordFields == PasswordFields.up) {
      _isPasswordHidden = !_isPasswordHidden;
    } else if (passwordFields == PasswordFields.down) {
      _isAgainPasswordHidden = !_isAgainPasswordHidden;
    }
    notifyListeners();
  }
}
