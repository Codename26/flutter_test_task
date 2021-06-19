part of 'random_user_bloc.dart';

@immutable
abstract class RandomUserState {}

class RandomUserInitial extends RandomUserState {}

class RandomUserLoading extends RandomUserState {}

class RandomUserError extends RandomUserState {
  final Exception e;

  RandomUserError(this.e);
}

class RandomUserSuccess extends RandomUserState {
  final List<RandomUser> users;

  RandomUserSuccess(this.users);
}
