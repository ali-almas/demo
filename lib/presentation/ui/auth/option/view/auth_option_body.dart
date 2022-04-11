import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../components/button/primary_button.dart';
import '../../../../components/button/secondary_button.dart';
import '../../../../route/navigation.dart';
import '../../../../route/route_name.dart';
import '../../../../utils/l10n.dart';
import '../../../main/main/viewmodel/main_view_model.dart';
import '../viewmodel/language_view_model.dart';
import 'auth_options_language_buttons.dart';

class AuthOptionBody extends StatelessWidget {
  const AuthOptionBody({Key? key}) : super(key: key);

  pushAndWait(String routeName) async {
    final route = await Navigation.push(routeName);
    if (route != null) await pushAndWait(route);
  }

  @override
  Widget build(BuildContext context) {
    context.watch<LanguageViewModel>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16),
            const AuthOptionLanguageButtons(),
            const Spacer(),
            PrimaryButton(
              title: L10n.login,
              onTap: () async => await pushAndWait(RouteName.loginPage),
            ),
            const SizedBox(height: 8),
            SecondaryButton(
              heroTag: UniqueKey().toString(),
              title: L10n.register,
              onTap: () async => await pushAndWait(RouteName.registrationPage),
            ),
            const Spacer(),
            SecondaryButton(
              title: L10n.paymentWithoutRegister,
              heroTag: UniqueKey().toString(),
              hasBorder: false,
              onTap: () => Navigation.push(RouteName.mainPage, arguments: EntranceState.unregistered),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
