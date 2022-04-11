import 'package:flutter/material.dart';

import '../../../../base/base_gradient.dart';
import 'notifications_body.dart';

class NotificationsPage extends StatelessWidget with BaseGradient {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  AppBar? appBar() {
    return AppBar();
  }

  @override
  Widget? body(BuildContext context) {
    return const NotificationsBody();
  }
}
