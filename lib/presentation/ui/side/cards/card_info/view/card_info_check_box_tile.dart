import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../components/checkbox/checkbox_tile.dart';
import '../../../../../utils/l10n.dart';
import '../viewmodel/card_info_view_model.dart';

class CardInfoCheckBoxTile extends StatelessWidget {
  const CardInfoCheckBoxTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cardInfoViewModel = context.watch<CardInfoViewModel>();

    return CheckBoxTile(
      text: L10n.addNewCard,
      didTap: (value) {
        cardInfoViewModel.changeCheckBoxState(value);
      },
      value: cardInfoViewModel.checkBoxValue,
    );
  }
}
