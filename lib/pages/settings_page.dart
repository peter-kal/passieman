import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passieman/blocs/screen_navigation/screen_navigation_bloc.dart';
import 'package:yaru/yaru.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: YaruDialogTitleBar(
        title: const Text("Settings"),
        leading: IconButton(
            onPressed: () {
              context.read<ScreenNavigationBloc>().add(const HomePageEvent());
            },
            icon: const Icon(Icons.arrow_back)),
        isMaximizable: true,
        isMinimizable: true,
      ),
    );
  }
}
