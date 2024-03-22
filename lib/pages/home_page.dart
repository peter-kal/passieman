import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passieman/blocs/logins_bloc/logins_bloc_bloc.dart';
import 'package:passieman/blocs/screen_navigation/screen_navigation_bloc.dart';
import 'package:passieman/widgets/todo_card.dart';
import 'package:yaru/yaru.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton.extended(
          label: const Row(
            mainAxisSize: MainAxisSize.max,
            children: [YaruIconButton(icon: Icon(Icons.add)), Text("Login")],
          ),
          onPressed: () => BlocProvider.of<ScreenNavigationBloc>(context)
              .add(const CreateLoginPageEvent())),
      appBar: YaruDialogTitleBar(
        centerTitle: true,
        leading: YaruIconButton(
          icon: const Icon(YaruIcons.refresh),
          onPressed: () =>
              context.read<LoginsBlocBloc>().add(const LoadLoginsEvent()),
        ),
        title: Text(
            "Passieman | ${AppLocalizations.of(context)!.allLoginsMessageonHomePageAppBar}"),
      ),
      body: BlocBuilder<LoginsBlocBloc, LoginsBlocState>(
          builder: (context, state) {
        print(state.toString());
        if (state is LoadedLoginsState) {
          return Center(
            child: ListView.builder(
              itemCount: state.logins.length,
              itemBuilder: (context, index) {
                return LoginCard(login: state.logins[index]);
              },
            ),
          );
        }
        return const CircularProgressIndicator();
      }),
    );
  }
}
