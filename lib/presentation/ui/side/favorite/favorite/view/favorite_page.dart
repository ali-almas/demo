import 'package:flutter/material.dart';

import '../../../../../base/base_gradient.dart';
import 'favorite_body.dart';

class FavoritePage extends StatelessWidget with BaseGradient {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget? body(BuildContext context) {
    return const FavoriteBody();
  }
}
