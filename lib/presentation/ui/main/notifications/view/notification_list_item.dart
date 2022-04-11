import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../shared/ui_color.dart';
import '../../../../shared/ui_text_style.dart';

class NotificationListItem extends StatelessWidget {
  final VoidCallback? didTapNotification;
  final VoidCallback? didTapDots;

  const NotificationListItem({
    Key? key,
    this.didTapNotification,
    this.didTapDots,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: didTapNotification,
      contentPadding: const EdgeInsets.only(left: 16),
      leading: CircleAvatar(
        radius: 21,
        backgroundColor: UIColor.green,
        child: CircleAvatar(
          backgroundColor: UIColor.white,
          child: SvgPicture.asset(
            "assets/svg/nar.svg",
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
      title: Text(
        "Nunc volutpat gravida sed tortor integer enim sodales tortor dui.",
        style: UITextStyle.headline2(),
        maxLines: 2,
      ),
      trailing: IconButton(
        onPressed: didTapDots,
        color: UIColor.black,
        icon: const Icon(Icons.more_vert),
      ),
    );
  }
}
