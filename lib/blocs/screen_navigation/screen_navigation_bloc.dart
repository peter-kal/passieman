import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:passieman/login_repo/login.dart';

part 'screen_navigation_event.dart';
part 'screen_navigation_state.dart';

class ScreenNavigationBloc
    extends Bloc<ScreenNavigationEvent, ScreenNavigationState> {
  ScreenNavigationBloc() : super(ScreenNavigationInitial()) {
    on<LoginPageEvent>(_onLoginPageEvent);
    on<HomePageEvent>(_onHomePageEvent);
    on<CreateLoginPageEvent>(_onCreateLoginPageEvent);
    on<SettingsPageEvent>(_onSettingsPageEvent);
  }

  void _onLoginPageEvent(
      LoginPageEvent event, Emitter<ScreenNavigationState> emit) {
    emit(LoginPageState(event.forloginpagelogin));
  }

  void _onHomePageEvent(
      HomePageEvent event, Emitter<ScreenNavigationState> emit) {
    emit(HomePageState());
  }

  void _onCreateLoginPageEvent(
      CreateLoginPageEvent event, Emitter<ScreenNavigationState> emit) {
    emit(CreateLoginPageState());
  }

  void _onSettingsPageEvent(
      SettingsPageEvent event, Emitter<ScreenNavigationState> emit) {
    emit(SettingsPageState());
  }
}
