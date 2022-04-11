import 'package:flutter/material.dart';

import '../../../../../base/base_gradient.dart';
import 'edit_favorite_body.dart';

class EditFavoritePage extends StatelessWidget with BaseGradient {
  const EditFavoritePage({Key? key}) : super(key: key);

  @override
  AppBar? appBar() {
    return AppBar();
  }

  @override
  Widget? body(BuildContext context) {
    return const EditFavoriteBody();
  }
}
