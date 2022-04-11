import 'package:flutter/material.dart';

import '../../../../../app/generic/generic_builder.dart';
import '../../../../../app/generic/generic_state.dart';
import '../../../../components/button/secondary_button.dart';
import '../../../../shared/ui_color.dart';
import '../../../../shared/ui_text_style.dart';
import '../../../../utils/l10n.dart';
import '../cubit/code_confirmation_cubit.dart';

class CodeConfirmationResend extends StatelessWidget {
  const CodeConfirmationResend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GenericBuilder<CodeConfirmationCubit, GenericState>(
      builder: (_, state) {
        return SecondaryButton(
          heroTag: UniqueKey().toString(),
          textColor: UIColor.black,
          onTap: () {},
          textStyle: UITextStyle.headline3(),
          title: L10n.resendCode,
          hasBorder: false,
        );
      },
    );
  }
}
