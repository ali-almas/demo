import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../components/button/secondary_button.dart';
import '../../../../route/navigation.dart';
import '../../../../shared/ui_color.dart';
import '../../../../shared/ui_text_style.dart';
import '../../../../utils/l10n.dart';
import '../../confirm-transaction/view/confirm_transaction_list_tile.dart';
import '../viewmodel/payment_result_view_model.dart';

class PaymentResultBody extends StatelessWidget {
  final PaymentResult paymentResult;

  const PaymentResultBody({Key? key, required this.paymentResult}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final paymentResultViewModel = context.watch<PaymentResultViewModel>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 64),
            if (paymentResult == PaymentResult.successful)
              Text(
                L10n.paymentIsSuccessful,
                style: UITextStyle.headline1(),
                textAlign: TextAlign.center,
              ),
            if (paymentResult == PaymentResult.failed)
              Text(
                L10n.paymentIsFailed,
                style: UITextStyle.headline1(color: UIColor.red),
                textAlign: TextAlign.center,
              ),
            const SizedBox(height: 32),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ConfirmTransactionListTile(
                    titleValue: paymentResultViewModel.items[index],
                    textAlign: TextAlign.center,
                  );
                },
                itemCount: paymentResultViewModel.items.length,
              ),
            ),
            SecondaryButton(
              onTap: () {
                Navigation.pop(context);
              },
              textStyle: UITextStyle.headline2(),
              hasBorder: false,
              title: L10n.backToHomePage,
              textColor: UIColor.black,
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
