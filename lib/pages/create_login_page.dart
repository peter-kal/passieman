import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passieman/blocs/logins_bloc/logins_bloc_bloc.dart';
import 'package:passieman/blocs/screen_navigation/screen_navigation_bloc.dart';
import 'package:passieman/login_repo/login.dart';
import 'package:yaru/yaru.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CreateLoginPage extends StatelessWidget {
  final paco = TextEditingController();
  final paco2 = TextEditingController();
  final paco3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: YaruDialogTitleBar(
        isMaximizable: true,
        isMinimizable: true,
        title: Text(AppLocalizations.of(context)!.createAlogin),
        leading: YaruIconButton(
          onPressed: () => BlocProvider.of<ScreenNavigationBloc>(context)
              .add(const HomePageEvent()),
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            TextField(
              onChanged: (value) => paco.text = value,
            ),
            TextField(
              onChanged: (value) => paco2.text = value,
            ),
            TextField(
              onChanged: (value) => paco3.text = value,
            ),
            FilledButton(
                onPressed: () {
                  final newLogin = Login()
                    ..loginSite = paco.text
                    ..loginUsername = paco2.text
                    ..loginPassword = paco3.text
                    ..loginCreationDate = DateTime.now()
                    ..loginLastEdited = DateTime.now();
                  BlocProvider.of<LoginsBlocBloc>(context)
                      .add(AddLoginEvent(newLogin));
                },
                child: const Text("Add Login"))
          ],
        ),
      ),
    );
  }
}
