import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../presentation/route/navigation.dart';
import '../presentation/route/route_generator.dart';
import '../presentation/shared/ui_theme.dart';
import '../presentation/ui/auth/option/view/auth_option_page.dart';
import '../presentation/ui/auth/pin-setting/view/pin_setting_page.dart';
import '../presentation/ui/entry/onboarding/view/onboarding_page.dart';
import '../presentation/ui/entry/splash/splash_page.dart';
import '../presentation/ui/main/main/view/main_page.dart';
import 'cubit/app_cubit.dart';
import 'generic/generic_state.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: UITheme.appTheme,
      onGenerateRoute: RouteGenerator.generateRoute,
      navigatorKey: Navigation.navigatorKey,
      home: BlocBuilder<AppCubit, GenericState>(
        builder: (context, state) {
          if (state is Onboarding) {
            return const OnboardingPage();
          } else if (state is Authorized) {
            return MainPage(entranceState: state.entranceState);
          } else if (state is Pin) {
            return const PinSettingPage();
          } else if (state is Unauthorized) {
            return const AuthOptionPage();
          }

          return const SplashPage();
        },
      ),
    );
  }
}
