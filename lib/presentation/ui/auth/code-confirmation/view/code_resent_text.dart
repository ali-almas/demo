import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../shared/ui_color.dart';
import '../../../../shared/ui_text_style.dart';
import '../../../../utils/l10n.dart';
import '../viewmodel/code_confirmation_view_model.dart';

class CodeResentText extends StatelessWidget {
  const CodeResentText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final codeConfirmationViewModel = context.watch<CodeConfirmationViewModel>();
    return Visibility(
      visible: codeConfirmationViewModel.hasCodeResent,
      child: Text(
        L10n.codeResent,
        textAlign: TextAlign.center,
        style: UITextStyle.headline2(
          color: UIColor.green,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
