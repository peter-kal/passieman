part of 'logins_bloc_bloc.dart';

sealed class LoginsBlocEvent extends Equatable {
  const LoginsBlocEvent();

  @override
  List<Object> get props => [];
}

class LoadLoginsEvent extends LoginsBlocEvent {
  const LoadLoginsEvent();

  @override
  List<Object> get props => [];
}

class AddLoginEvent extends LoginsBlocEvent {
  const AddLoginEvent(this.newlogin);

  final Login newlogin;

  @override
  List<Object> get props => [newlogin];
}

class DeleteLoginEvent extends LoginsBlocEvent {
  const DeleteLoginEvent(this.todeleteLoginid);

  final int todeleteLoginid;

  @override
  List<Object> get props => [todeleteLoginid];
}
