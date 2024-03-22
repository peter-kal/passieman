part of 'screen_navigation_bloc.dart';

sealed class ScreenNavigationEvent extends Equatable {
  const ScreenNavigationEvent();

  @override
  List<Object> get props => [];
}

class LoginPageEvent extends ScreenNavigationEvent {
  const LoginPageEvent(this.forloginpagelogin);

  final Login forloginpagelogin;
  @override
  List<Object> get props => [forloginpagelogin];
}

class HomePageEvent extends ScreenNavigationEvent {
  const HomePageEvent();

  @override
  List<Object> get props => [];
}

class SettingsPageEvent extends ScreenNavigationEvent {
  const SettingsPageEvent();

  @override
  List<Object> get props => [];
}

class CreateLoginPageEvent extends ScreenNavigationEvent {
  const CreateLoginPageEvent();

  @override
  List<Object> get props => [];
}
