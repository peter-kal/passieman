import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passieman/blocs/passieman_blocs.dart';
import 'package:passieman/pages/create_login_page.dart';
import 'package:passieman/pages/home_page.dart';
import 'package:passieman/pages/login_page.dart';
import 'package:passieman/pages/settings_page.dart';
import 'package:yaru/yaru.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

Future<void> main() async {
  Bloc.observer = MyBlocObserver();
  await YaruWindowTitleBar.ensureInitialized();
  runApp(MultiBlocProvider(providers: [
    BlocProvider(
        create: (_) => ScreenNavigationBloc()..add(const HomePageEvent()))
  ], child: const PassiemanApp()));
}

class PassiemanApp extends StatelessWidget {
  const PassiemanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return YaruTheme(
      builder: (context, yaru, child) {
        return MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          debugShowCheckedModeBanner: false,
          title: 'Passieman',
          theme: yaru.theme,
          darkTheme: yaru.darkTheme,
          home: BlocBuilder<ScreenNavigationBloc, ScreenNavigationState>(
            builder: (context, ScreenNavigationState state) {
              if (state is HomePageState) {
                return const HomePage();
              } else if (state is CreateLoginPageState) {
                return const CreateLoginPage();
              } else if (state is LoginPageState) {
                return const LoginPage();
              } else if (state is SettingsPageState) {
                return const SettingsPage();
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        );
      },
    );
  }
}
