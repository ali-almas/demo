import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../components/field/pin/pin_field.dart';
import '../viewmodel/code_confirmation_view_model.dart';

class CodeConfirmationPinField extends StatelessWidget {
  const CodeConfirmationPinField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final codeConfirmationViewModel = context.watch<CodeConfirmationViewModel>();
    return PinField(
      pin: codeConfirmationViewModel.otpCode,
      maxNumberOfFields: 6,
    );
  }
}
