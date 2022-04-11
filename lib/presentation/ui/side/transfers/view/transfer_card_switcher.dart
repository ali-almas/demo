import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../components/cards/card_container.dart';
import '../../../../components/cards/card_field.dart';
import '../viewmodel/transfers_view_model.dart';

class TransferCardSwitcher extends StatelessWidget {
  const TransferCardSwitcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final transfersViewModel = context.watch<TransfersViewModel>();

    return Column(
      children: [
        if (transfersViewModel.pageState == PageState.ownCard) const CardContainer() else const CardField(),
      ],
    );
  }
}
