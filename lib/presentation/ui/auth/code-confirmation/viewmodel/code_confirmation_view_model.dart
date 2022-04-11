import 'package:demo/presentation/utils/extensions/string_x.dart';
import 'package:flutter/cupertino.dart';

import '../../../../components/number-pad/model/number_pad_char_item.dart';

enum PreviousPage { resetPassword, registration }

class CodeConfirmationViewModel extends ChangeNotifier {
  bool _hasCodeResent = false;
  bool _isOtpValid = false;
  String _otpCode = '';

  String get otpCode => _otpCode;
  bool get hasCodeResent => _hasCodeResent;
  bool get isOtpValid => _isOtpValid;

  resentCode() {
    _hasCodeResent = true;
    notifyListeners();
  }

  updateOtp(CharItem charItem) {
    if (charItem.char == Char.clear) {
      if (_otpCode.isNotEmpty) {
        _otpCode = _otpCode.lastRemoved;
        _isOtpValid = false;
      }
    } else {
      if (otpCode.length < 6) {
        _otpCode += charItem.value;
        if (otpCode.length == 6) _isOtpValid = true;
      }
    }
    notifyListeners();
  }
}
