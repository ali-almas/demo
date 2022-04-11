import 'package:flutter/material.dart';

import '../../../../../components/button/primary_button.dart';
import '../../../../../components/cards/card_field.dart';
import '../../../../../shared/ui_color.dart';
import '../../../../../shared/ui_text_style.dart';
import '../../../../../utils/l10n.dart';
import '../../../../main/main/viewmodel/main_view_model.dart';
import '../viewmodel/card_info_view_model.dart';
import 'card_info_check_box_tile.dart';

class CardInfoBody extends StatelessWidget {
  final CardInfoPageState? pageState;
  final EntranceState? entranceState;
  const CardInfoBody({Key? key, required this.pageState, this.entranceState}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 24),
            Text(
              L10n.enterCardInformation,
              style: UITextStyle.headline2(
                fontWeight: FontWeight.w400,
                color: UIColor.black.withOpacity(0.3),
              ),
            ),
            const SizedBox(height: 24),
            const CardField(),
            if (pageState == CardInfoPageState.payment && entranceState == EntranceState.registered) const CardInfoCheckBoxTile(),
            const Spacer(),
            PrimaryButton(
              title: pageState == CardInfoPageState.addCard ? L10n.saveCard : L10n.pay,
              onTap: () {},
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
