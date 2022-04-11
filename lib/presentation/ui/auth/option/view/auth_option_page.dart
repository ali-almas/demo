import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../base/base_gradient.dart';
import '../viewmodel/language_view_model.dart';
import 'auth_option_body.dart';

class AuthOptionPage extends StatelessWidget with BaseGradient {
  const AuthOptionPage({Key? key}) : super(key: key);

  @override
  Widget? body(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => LanguageViewModel(context.locale.languageCode),
      child: const AuthOptionBody(),
    );
  }
}
