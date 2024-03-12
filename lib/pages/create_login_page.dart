import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passieman/blocs/screen_navigation/screen_navigation_bloc.dart';
import 'package:yaru/yaru.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CreateLoginPage extends StatelessWidget {
  const CreateLoginPage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: YaruDialogTitleBar(
        title: Text(AppLocalizations.of(context)!.createAlogin),
        leading: YaruIconButton(
          onPressed: () =>
              context.read<ScreenNavigationBloc>().add(const HomePageEvent()),
          icon: const Icon(Icons.arrow_back),
        ),
      ),
    );
  }
}
