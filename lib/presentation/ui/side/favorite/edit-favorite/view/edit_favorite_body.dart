import 'package:flutter/material.dart';

import '../../../../../components/button/primary_button.dart';
import '../../../../../utils/l10n.dart';
import 'edit_favorite_field.dart';

class EditFavoriteBody extends StatelessWidget {
  const EditFavoriteBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 32),
            EditFavoriteField(headText: L10n.paymentName, didTap: () {}),
            const SizedBox(height: 32),
            EditFavoriteField(headText: L10n.mobile, didTap: () {}),
            const Spacer(),
            PrimaryButton(
              title: L10n.rememberChange,
              onTap: () {},
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
