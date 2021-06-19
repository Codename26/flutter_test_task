part of 'current_user_bloc.dart';

@immutable
abstract class CurrentUserEvent {}

class SetCurrentUser extends CurrentUserEvent {
  final String id;

  SetCurrentUser(this.id);
}

class GetCurrentUser extends CurrentUserEvent {}
