import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_test_task/models/randomUser.dart';
import 'package:flutter_test_task/repository/random_user_repository.dart';
import 'package:meta/meta.dart';

part 'current_user_event.dart';
part 'current_user_state.dart';

class CurrentUserBloc extends Bloc<CurrentUserEvent, CurrentUserState> {
  final RandomUserRepository _randomUserRepository;

  CurrentUserBloc(RandomUserRepository randomUserRepository)
      : _randomUserRepository = randomUserRepository,
        super(CurrentUserInitial());

  @override
  Stream<CurrentUserState> mapEventToState(
    CurrentUserEvent event,
  ) async* {
    if (event is SetCurrentUser) {
      _randomUserRepository.currentUser = event.id;
    } else if (event is GetCurrentUser) {
      yield* _mapGetCurrentUserToState();
    }
  }

  Stream<CurrentUserState> _mapGetCurrentUserToState() async* {
    try {
      final user = _randomUserRepository.getCurrentUser();
      yield CurrentUserSuccess(user);
    } on Exception catch (e) {
      yield CurrentUserError(e);
    }
  }
}
