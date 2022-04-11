import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../base/base_gradient.dart';
import '../viewmodel/confirm_transaction_view_model.dart';
import 'confirm_transaction_body.dart';

class ConfirmTransactionPage extends StatelessWidget with BaseGradient {
  const ConfirmTransactionPage({Key? key}) : super(key: key);

  @override
  AppBar? appBar() {
    return AppBar();
  }

  @override
  Widget? body(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ConfirmTransactionViewModel(),
      child: const ConfirmTransactionBody(),
    );
  }
}
