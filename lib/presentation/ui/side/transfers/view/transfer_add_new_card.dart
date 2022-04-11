import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../components/button/secondary_button.dart';
import '../../../../utils/l10n.dart';
import '../viewmodel/transfers_view_model.dart';

class TransferAddNewCard extends StatelessWidget {
  const TransferAddNewCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final transfersViewModel = context.watch<TransfersViewModel>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (transfersViewModel.pageState == PageState.ownCard)
          SecondaryButton(
            title: L10n.addNewCard,
            onTap: () => transfersViewModel.changePageState(PageState.anotherCard),
          )
      ],
    );
  }
}
