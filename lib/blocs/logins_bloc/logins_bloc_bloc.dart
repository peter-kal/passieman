import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';
import 'package:passieman/login_repo/login.dart';
import 'package:passieman/login_repo/repo.dart';

part 'logins_bloc_event.dart';
part 'logins_bloc_state.dart';

class LoginsBlocBloc extends Bloc<LoginsBlocEvent, LoginsBlocState> {
  LoginsBlocBloc() : super(LoginsBlocInitial()) {
    on<AddLoginEvent>(
        (AddLoginEvent event, Emitter<LoginsBlocState> emit) async {
      await IsarService().saveLogin(event.newlogin);
      add(const LoadLoginsEvent());
    });
    on<DeleteLoginEvent>(
        (DeleteLoginEvent event, Emitter<LoginsBlocState> emit) async {
      await IsarService().deleteLogin(event.todeleteLoginid);
      add(const LoadLoginsEvent());
    });
    on<LoadLoginsEvent>((event, emit) async {
      final logins = await IsarService().loadAllLogins();
      List<Login> loginList = logins;
      emit(LoadedLoginsState(loginList));
    });
  }
}
