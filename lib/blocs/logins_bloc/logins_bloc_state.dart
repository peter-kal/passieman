part of 'logins_bloc_bloc.dart';

sealed class LoginsBlocState extends Equatable {
  const LoginsBlocState();

  @override
  List<Object> get props => [];
}

class LoginsBlocInitial extends LoginsBlocState {}

class LoadedLoginsState extends LoginsBlocState {
  const LoadedLoginsState(this.logins);

  final List<Login> logins;
  @override
  List<Object> get props => [logins];
}
