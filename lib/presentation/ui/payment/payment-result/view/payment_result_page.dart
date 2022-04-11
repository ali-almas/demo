import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../base/base_gradient.dart';
import '../viewmodel/payment_result_view_model.dart';
import 'payment_result_body.dart';

class PaymentResultPage extends StatelessWidget with BaseGradient {
  final PaymentResult paymentResult;

  const PaymentResultPage({Key? key, required this.paymentResult}) : super(key: key);

  @override
  Widget? body(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => PaymentResultViewModel(),
      child: PaymentResultBody(
        paymentResult: paymentResult,
      ),
    );
  }
}
