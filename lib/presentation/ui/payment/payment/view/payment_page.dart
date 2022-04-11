import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../viewmodel/payment_category_view_model.dart';
import '../viewmodel/payment_services_view_model.dart';
import 'payment_body.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => PageController(),
        ),
        ChangeNotifierProvider(
          create: (_) => PaymentCategoryViewModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => PaymentServicesViewModel(),
        ),
      ],
      child: const PaymentBody(),
    );
  }
}
