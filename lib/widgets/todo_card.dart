import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passieman/blocs/logins_bloc/logins_bloc_bloc.dart';
import 'package:passieman/blocs/screen_navigation/screen_navigation_bloc.dart';
import 'package:passieman/login_repo/login.dart';
import 'package:yaru/yaru.dart';

class LoginCard extends StatelessWidget {
  LoginCard({super.key, required this.login});
  final passwordController = TextEditingController();
  final usernameController = TextEditingController();

  final Login login;
  var obscurevalue = true;
  @override
  Widget build(BuildContext context) {
    passwordController.text = login.loginPassword.toString();
    usernameController.text = login.loginUsername.toString();

    return SizedBox(
      height: 150,
      width: (MediaQuery.sizeOf(context).width * 0.80),
      child: Card(
        child: Row(
          children: [
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    login.loginSite.toString(),
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: MediaQuery.sizeOf(context).height * 0.03),
                  ),
                  TextField(
                    controller: usernameController,
                    decoration: InputDecoration(),
                  ),
                  TextField(
                    controller: passwordController,
                    decoration: InputDecoration(border: InputBorder.none),
                  )
                ],
              ),
            ),
            const VerticalDivider(),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.15,
              child: Center(
                child: FilledButton(
                  child: const Icon(Icons.arrow_forward_ios),
                  onPressed: () {
                    context
                        .read<ScreenNavigationBloc>()
                        .add(LoginPageEvent(login));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
