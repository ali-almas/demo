import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../components/checkbox/checkbox_tile.dart';
import '../../../../utils/l10n.dart';
import '../viewmodel/transfers_view_model.dart';

class TransferSaveCardCheckbox extends StatelessWidget {
  const TransferSaveCardCheckbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final transfersViewModel = context.watch<TransfersViewModel>();

    return Column(
      children: [
        if (transfersViewModel.pageState == PageState.anotherCard)
          CheckBoxTile(
            text: L10n.saveCard,
            didTap: (value) => transfersViewModel.changeCheckBoxState(value),
            value: transfersViewModel.checkBoxValue,
          )
      ],
    );
  }
}
