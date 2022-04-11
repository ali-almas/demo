import 'package:demo/presentation/utils/extensions/string_x.dart';
import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../data/endpoint/security/send_sms_code.dart';
import '../../../../utils/l10n.dart';

class PasswordResetViewModel extends ChangeNotifier {
  final _countryCode = "994";
  final _maskController = MaskedTextController(mask: "00 000 00 00");

  String _mobile = "";

  String? _mobileError;

  String? get mobileError => _mobileError;

  MaskedTextController get mobileController => _maskController;

  bool get isFormValid {
    final hasNoError = _mobileError == null;
    final isFieldsValid = _mobile.isValidPhoneNumber;
    return hasNoError && isFieldsValid;
  }

  SendSmsCodeInput get input {
    return SendSmsCodeInput(mobile: _mobile);
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
}
