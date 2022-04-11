import 'package:demo/presentation/ui/side/transfers/view/transfer_add_new_card.dart';
import 'package:demo/presentation/ui/side/transfers/view/transfer_card_switcher.dart';
import 'package:demo/presentation/ui/side/transfers/view/transfer_choose_from_cards.dart';
import 'package:demo/presentation/ui/side/transfers/view/transfer_save_card_checkbox.dart';
import 'package:flutter/material.dart';

import '../../../../components/button/primary_button.dart';
import '../../../../components/cards/card_number_field.dart';
import '../../../../components/field/primary/primary_text_field.dart';
import '../../../../shared/ui_color.dart';
import '../../../../shared/ui_text_style.dart';
import '../../../../utils/l10n.dart';
import 'transfer_card_add_favorite_checkbox.dart';

class TransferBody extends StatelessWidget {
  const TransferBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: ListView(
          children: [
            const TransferChooseFromCard(),
            const SizedBox(height: 16),
            Text(
              L10n.fromCard,
              style: UITextStyle.headline2(
                fontWeight: FontWeight.w400,
                color: UIColor.black.withOpacity(0.3),
              ),
            ),
            const SizedBox(height: 8),
            const TransferCardSwitcher(),
            const TransferSaveCardCheckbox(),
            const SizedBox(height: 8),
            const TransferAddNewCard(),
            const SizedBox(height: 32),
            Text(
              L10n.toCard,
              style: UITextStyle.headline2(
                fontWeight: FontWeight.w400,
                color: UIColor.black.withOpacity(0.3),
              ),
            ),
            const SizedBox(height: 8),
            const CardNumberField(),
            const SizedBox(height: 48),
            PrimaryTextField(
              placeholder: L10n.priceAndCurrency,
            ),
            const SizedBox(height: 8),
            Text(
              "${L10n.min} 1.00 ${L10n.azn}, ${L10n.max} 200.00 ${L10n.azn}",
              style: UITextStyle.headline3(
                color: UIColor.black.withOpacity(0.3),
              ),
            ),
            const SizedBox(height: 48),
            const TransferCardAddFavoriteCheckBox(),
            const SizedBox(height: 24),
            PrimaryButton(
              title: L10n.transfer,
              onTap: () {},
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
