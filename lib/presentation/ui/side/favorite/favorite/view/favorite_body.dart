import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../components/button/secondary_button.dart';
import '../../../../../components/field/primary/primary_text_field.dart';
import '../../../../../utils/l10n.dart';
import 'favorite_list.dart';

class FavoriteBody extends StatelessWidget {
  const FavoriteBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16),
            PrimaryTextField(label: L10n.searchFavorite),
            const SizedBox(height: 16),
            const Expanded(child: FavoriteList()),
            SecondaryButton(
              title: L10n.newFavoritePayment,
              onTap: () {},
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
