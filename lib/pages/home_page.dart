import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passieman/blocs/screen_navigation/screen_navigation_bloc.dart';
import 'package:yaru/yaru.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatelessWidget {
  const HomePage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () => context
              .read<ScreenNavigationBloc>()
              .add(const CreateLoginPageEvent())),
      appBar: YaruDialogTitleBar(
        centerTitle: true,
        title: Text(
            "Passieman | ${AppLocalizations.of(context)!.allLoginsMessageonHomePageAppBar}"),
      ),
    );
  }
}
