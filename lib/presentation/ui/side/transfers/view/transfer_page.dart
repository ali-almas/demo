import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../base/base_gradient.dart';
import '../viewmodel/transfers_view_model.dart';
import 'transfer_body.dart';

class TransferPage extends StatelessWidget with BaseGradient {
  const TransferPage({Key? key}) : super(key: key);
  @override
  AppBar? appBar() {
    return AppBar();
  }

  @override
  Widget? body(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TransfersViewModel(),
      child: const TransferBody(),
    );
  }
}
