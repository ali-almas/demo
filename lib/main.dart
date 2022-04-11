import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'app/app.dart';
import 'app/cubit/app_cubit.dart';
import 'app/delegate.dart';
import 'app/di/injection.dart';
import 'presentation/ui/main/main/viewmodel/main_view_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Injection.register();
  await EasyLocalization.ensureInitialized();

  BlocOverrides.runZoned(
    () => runApp(
      EasyLocalization(
        saveLocale: true,
        path: "assets/translations",
        supportedLocales: const [
          Locale("az"),
          Locale("en"),
          Locale("ru"),
        ],
        fallbackLocale: const Locale("az"),
        child: MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => MainViewModel()),
          ],
          child: BlocProvider<AppCubit>(
            create: (context) => AppCubit()..check(),
            child: const App(),
          ),
        ),
      ),
    ),
    blocObserver: SimpleBlocObserver(),
  );
}
