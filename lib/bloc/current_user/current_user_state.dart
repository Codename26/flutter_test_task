part of 'current_user_bloc.dart';

@immutable
abstract class CurrentUserState {}

class CurrentUserInitial extends CurrentUserState {}

class CurrentUserError extends CurrentUserState {
  final Exception exception;

  CurrentUserError(this.exception);
}

class CurrentUserSuccess extends CurrentUserState {
  final RandomUser user;

  CurrentUserSuccess(this.user);
}
