import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passieman/blocs/screen_navigation/screen_navigation_bloc.dart';
import 'package:passieman/login_repo/login.dart';
import 'package:yaru/yaru.dart';

class LoginPage extends StatelessWidget {
  const LoginPage(this.thelogin, {super.key});
  final Login thelogin;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: YaruDialogTitleBar(
        leading: YaruIconButton(
          onPressed: () => BlocProvider.of<ScreenNavigationBloc>(context)
              .add(const HomePageEvent()),
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text("Login Page"),
      ),
      body: Center(
        child: Column(children: [
          Text(thelogin.loginSite.toString()),
          Text(thelogin.loginPassword.toString())
        ]),
      ),
    );
  }
}
