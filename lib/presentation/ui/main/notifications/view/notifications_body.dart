import 'package:flutter/material.dart';

import '../../../../shared/ui_color.dart';
import '../../../../shared/ui_text_style.dart';
import 'notification_list.dart';
import 'notifications_right_icons.dart';

class NotificationsBody extends StatelessWidget {
  const NotificationsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Text("Bildirişlər(2)", style: UITextStyle.headline1(color: UIColor.green)),
          const SizedBox(height: 16),
          const Divider(),
          const NotificationsRightIcons(),
          const SizedBox(height: 16),
          const Expanded(child: NotificationsList()),
        ],
      ),
    );
  }
}
