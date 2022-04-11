import 'package:demo/presentation/ui/payment/payment/view/payment_category.dart';
import 'package:demo/presentation/ui/payment/payment/view/payment_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../components/field/primary/primary_text_field.dart';
import '../../../../utils/l10n.dart';

class PaymentBody extends StatelessWidget {
  const PaymentBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageController = context.read<PageController>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            const SizedBox(height: 24),
            PrimaryTextField(
              label: L10n.searchService,
            ),
            const SizedBox(height: 24),
            Expanded(
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: pageController,
                scrollDirection: Axis.horizontal,
                children: const [
                  PaymentCategory(),
                  PaymentServices(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
