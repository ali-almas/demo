import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../components/button/circle_button.dart';
import '../viewmodel/language_view_model.dart';

class AuthOptionLanguageButtons extends StatelessWidget {
  const AuthOptionLanguageButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final languageViewModel = context.watch<LanguageViewModel>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: languageViewModel.languages.map((language) {
        return CircleButton(
          title: language.languageCode,
          isSelected: language.isSelected,
          onTap: () async {
            await context.setLocale(Locale(language.languageCode.toLowerCase()));
            languageViewModel.select(language);
          },
        );
      }).toList(),
    );
  }
}
