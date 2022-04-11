import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../components/button/primary_button.dart';
import '../../../../../components/button/secondary_button.dart';
import '../../../../../components/field/primary/primary_text_field.dart';
import '../../../../../shared/ui_color.dart';
import '../../../../../shared/ui_text_style.dart';
import '../../../../../utils/l10n.dart';

class CardsDetailsEdit extends StatelessWidget {
  const CardsDetailsEdit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 24),
        Text(
          L10n.cardName,
          style: UITextStyle.headline2(fontWeight: FontWeight.w400),
        ),
        const SizedBox(height: 8),
        PrimaryTextField(
          color: UIColor.green,
          suffixIcon: CupertinoIcons.pen,
          onTapSuffix: () {},
          suffixIconColor: UIColor.green,
        ),
        const SizedBox(height: 24),
        Text(L10n.cardColor, style: UITextStyle.headline3(fontSize: 16)),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(backgroundColor: UIColor.black.withOpacity(0.8)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.keyboard_arrow_down_outlined)),
              ],
            ),
            SecondaryButton(title: L10n.saveChanges, onTap: () {}, hasBorder: false)
          ],
        ),
        const SizedBox(height: 24),
        PrimaryButton(title: L10n.lookAtCardHistory, onTap: () {}),
        const SizedBox(height: 8),
        SecondaryButton(title: L10n.deleteCard, onTap: () {}),
      ],
    );
  }
}
