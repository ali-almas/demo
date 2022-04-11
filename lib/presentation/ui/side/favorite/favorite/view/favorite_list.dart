import 'package:flutter/material.dart';

import '../../../../../route/navigation.dart';
import '../../../../../route/route_name.dart';
import 'favorite_list_item.dart';

class FavoriteList extends StatelessWidget {
  const FavoriteList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, _) => const SizedBox(height: 24),
      itemCount: 20,
      itemBuilder: ((context, index) {
        return FavoriteListItem(
          didTapDots: () => Navigation.push(RouteName.editFavoritePage),
          didTapFavorite: () {},
        );
      }),
    );
  }
}
