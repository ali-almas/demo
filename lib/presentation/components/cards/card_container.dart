import 'package:demo/presentation/components/cards/user_cards.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../ui/side/transfers/viewmodel/transfers_view_model.dart';
import 'cards_details.dart';

class CardContainer extends StatelessWidget {
  const CardContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final transfersViewModel = context.watch<TransfersViewModel>();

    return AnimatedSwitcher(
      transitionBuilder: (Widget child, Animation<double> animation) {
        return SizeTransition(
          sizeFactor: animation,
          child: child,
          axisAlignment: 0.0,
        );
      },
      duration: const Duration(milliseconds: 300),
      child: transfersViewModel.state == CardState.clicked
          ? CardsDetails(
              didTapCard: () => transfersViewModel.changeCardState(CardState.unClicked),
              icon: Icons.remove_red_eye,
              headText: "Əsas Kartım",
              cardNumber: "0000 1111 2222 3333 ",
              cardDate: "08-22",
              cardCVC: "160",
            )
          : UserCards(
              didTapCards: () => transfersViewModel.changeCardState(CardState.clicked),
              headText: "Əsas Kartım",
              cardNumber: "0000 1111 2222 3333 ",
              imagePath: "assets/svg/visa.svg",
            ),
    );
  }
}
