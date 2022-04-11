import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../components/number-pad/view/number_pad.dart';
import '../../../../shared/ui_text_style.dart';
import '../../../../utils/l10n.dart';
import '../cubit/code_confirmation_cubit.dart';
import '../viewmodel/code_confirmation_view_model.dart';
import 'code_confirmation_pin_field.dart';
import 'code_confirmation_resend.dart';
import 'code_resent_text.dart';

class CodeConfirmationBody extends StatelessWidget {
  const CodeConfirmationBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final codeConfirmationViewModel = context.read<CodeConfirmationViewModel>();
    final codeConfirmationCubit = context.read<CodeConfirmationCubit>();
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            const SizedBox(height: 32),
            const CodeResentText(),
            const SizedBox(height: 32),
            Text(
              L10n.otpTutorial,
              textAlign: TextAlign.center,
              style: UITextStyle.headline2(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 48),
            const CodeConfirmationPinField(),
            const SizedBox(height: 16),
            const CodeConfirmationResend(),
            const SizedBox(height: 16),
            Expanded(
              child: NumberPad(
                onTapNumber: (value) {
                  codeConfirmationViewModel.updateOtp(value);
                  if (codeConfirmationViewModel.isOtpValid) {
                    codeConfirmationCubit.verifySmsCode(codeConfirmationViewModel.otpCode);
                  }
                },
              ),
            ),
            // const Spacer(),
          ],
        ),
      ),
    );
  }
}
