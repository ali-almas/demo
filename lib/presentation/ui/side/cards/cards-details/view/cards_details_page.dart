import 'package:flutter/material.dart';

import '../../../../../base/base_gradient.dart';
import 'cards_details_body.dart';

class CardsDetailsPage extends StatelessWidget with BaseGradient {
  const CardsDetailsPage({Key? key}) : super(key: key);

  @override
  Widget? body(BuildContext context) {
    return const CardsDetailsBody();
  }
}
