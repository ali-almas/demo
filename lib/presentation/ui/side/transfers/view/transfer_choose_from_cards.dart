import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../shared/ui_color.dart';
import '../../../../shared/ui_text_style.dart';
import '../../../../utils/l10n.dart';
import '../viewmodel/transfers_view_model.dart';

class TransferChooseFromCard extends StatelessWidget {
  const TransferChooseFromCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final transfersViewModel = context.watch<TransfersViewModel>();

    return Column(
      children: [
        if (transfersViewModel.pageState == PageState.anotherCard)
          Align(
            alignment: Alignment.centerLeft,
            child: TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
              ),
              child: Text(
                L10n.chooseFromCards,
                style: UITextStyle.headline2(
                  color: UIColor.green,
                  fontWeight: FontWeight.w400,
                ),
              ),
              onPressed: () => transfersViewModel.changePageState(PageState.ownCard),
            ),
          )
      ],
    );
  }
}
