part of 'screen_navigation_bloc.dart';

sealed class ScreenNavigationState extends Equatable {
  const ScreenNavigationState();

  @override
  List<Object> get props => [];
}

final class ScreenNavigationInitial extends ScreenNavigationState {}

class CreateLoginPageState extends ScreenNavigationState {}

class SettingsPageState extends ScreenNavigationState {}

class HomePageState extends ScreenNavigationState {}

class LoginPageState extends ScreenNavigationState {}
