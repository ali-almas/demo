import 'package:flutter/material.dart';

import '../../../../../shared/ui_color.dart';
import '../../../../../shared/ui_text_style.dart';

class FavoriteListItem extends StatelessWidget {
  final VoidCallback? didTapFavorite;
  final VoidCallback? didTapDots;

  const FavoriteListItem({Key? key, this.didTapFavorite, this.didTapDots}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: didTapFavorite,
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Telefon nömrəmə ödəniş", style: UITextStyle.headline2(color: UIColor.green)),
              IconButton(
                onPressed: didTapDots,
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                icon: const Icon(Icons.more_vert),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            "Mobil operatorlar",
            style: UITextStyle.headline3(
              color: UIColor.black.withOpacity(0.5),
            ),
          ),
          const SizedBox(height: 4),
          Text("Azercell", style: UITextStyle.headline3()),
          const SizedBox(height: 4),
          Text("0501231212", style: UITextStyle.headline3()),
        ],
      ),
    );
  }
}
