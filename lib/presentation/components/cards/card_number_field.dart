import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../shared/ui_color.dart';
import '../../utils/l10n.dart';
import '../field/primary/primary_text_field.dart';

class CardNumberField extends StatelessWidget {
  const CardNumberField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      elevation: 0,
      color: UIColor.black.withOpacity(0.8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: PrimaryTextField(
                placeholder: L10n.cardNumberFieldPlaceHolder,
              ),
            ),
            const SizedBox(width: 8),
            InkWell(
              onTap: () {},
              child: const Icon(
                CupertinoIcons.viewfinder,
                color: UIColor.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
