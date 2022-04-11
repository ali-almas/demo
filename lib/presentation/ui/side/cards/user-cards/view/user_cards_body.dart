import 'package:demo/presentation/ui/side/cards/user-cards/view/user_cards_list.dart';
import 'package:flutter/material.dart';

import '../../../../../route/navigation.dart';
import '../../../../../route/route_name.dart';
import '../../../../../shared/ui_color.dart';
import '../../../../../shared/ui_text_style.dart';

class UserCardsBody extends StatelessWidget {
  const UserCardsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 8),
            Text(
              "Kartlarım",
              style: UITextStyle.headline2(
                color: UIColor.black.withOpacity(0.7),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: UserCardsList(
                didTap: () => Navigation.push(RouteName.cardsDetailsPage),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
