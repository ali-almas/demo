import 'package:flutter/material.dart';

import '../../../../components/button/primary_button.dart';
import '../../../../shared/ui_color.dart';
import '../../../../shared/ui_text_style.dart';
import '../../../../utils/l10n.dart';
import 'confirm_transaction_list.dart';

class ConfirmTransactionBody extends StatelessWidget {
  const ConfirmTransactionBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16),
            Text(
              L10n.confirmInformation,
              style: UITextStyle.headline3(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: UIColor.black.withOpacity(0.3),
              ),
            ),
            const Expanded(
              child: ConfirmTransactionList(),
            ),
            const SizedBox(height: 8),
            PrimaryButton(
              title: L10n.confirmPayment,
              onTap: () {},
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
