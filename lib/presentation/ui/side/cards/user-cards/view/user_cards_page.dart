import 'package:demo/presentation/ui/side/cards/user-cards/view/user_cards_body.dart';
import 'package:flutter/material.dart';

import '../../../../../base/base_gradient.dart';

class UserCardsPage extends StatelessWidget with BaseGradient {
  const UserCardsPage({Key? key}) : super(key: key);

  @override
  AppBar? appBar() {
    return AppBar();
  }

  @override
  Widget? body(BuildContext context) {
    return const UserCardsBody();
  }
}
