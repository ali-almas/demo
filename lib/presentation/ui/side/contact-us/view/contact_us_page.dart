import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../base/base_gradient.dart';
import '../viewmodel/contact_us_view_model.dart';
import 'contact_us_body.dart';

class ContactUsPage extends StatelessWidget with BaseGradient {
  const ContactUsPage({Key? key}) : super(key: key);

  @override
  AppBar? appBar() {
    return AppBar();
  }

  @override
  Widget? body(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ContactUsViewModel(),
      child: const ContactUsBody(),
    );
  }
}
