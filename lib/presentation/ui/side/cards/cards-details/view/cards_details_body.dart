import 'package:flutter/material.dart';

import '../../../../../components/cards/cards_details.dart';
import '../../../../../shared/ui_color.dart';
import '../../../../../shared/ui_text_style.dart';
import '../../../../../utils/l10n.dart';
import 'cards_details_edit.dart';

class CardsDetailsBody extends StatelessWidget {
  const CardsDetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: ListView(
          children: [
            const SizedBox(height: 24),
            Text(
              L10n.myCards,
              style: UITextStyle.headline2(
                color: UIColor.black.withOpacity(0.7),
              ),
            ),
            const SizedBox(height: 24),
            const CardsDetails(
              cardNumber: "0000 11** **** 3333",
              headText: "Əsas Kartım",
              cardCVC: "***",
              cardDate: "10/25",
              icon: Icons.visibility_off_outlined,
              cardTypeImage: "assets/svg/visa.svg",
            ),
            const CardsDetailsEdit(),
          ],
        ),
      ),
    );
  }
}
