import 'package:flutter/material.dart';

import '../../../../../components/button/secondary_button.dart';
import '../../../../../components/cards/user_cards.dart';
import '../../../../../route/navigation.dart';
import '../../../../../route/route_name.dart';
import '../../../../../utils/l10n.dart';
import '../../../../main/main/viewmodel/main_view_model.dart';
import '../../card_info/viewmodel/card_info_view_model.dart';

class UserCardsList extends StatelessWidget {
  final VoidCallback? didTap;

  const UserCardsList({Key? key, this.didTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return UserCards(
              headText: "Əsas Kartım",
              cardNumber: "0000 1111 1111 2222 ",
              imagePath: "assets/svg/visa.svg",
              didTapCards: didTap,
            );
          }, childCount: 2),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 24)),
        SliverToBoxAdapter(
          child: SecondaryButton(
            title: L10n.addNewCard,
            onTap: () => Navigation.push(RouteName.cardInfo, arguments: [
              EntranceState.registered,
              CardInfoPageState.addCard,
            ]),
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 16)),
      ],
    );
  }
}
