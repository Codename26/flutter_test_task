import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_test_task/models/randomUser.dart';
import 'package:flutter_test_task/repository/random_user_repository.dart';
import 'package:flutter_test_task/ui/common/constants.dart';
import 'package:meta/meta.dart';

part 'random_user_event.dart';
part 'random_user_state.dart';

class RandomUserBloc extends Bloc<RandomUserEvent, RandomUserState> {
  final RandomUserRepository _randomUserRepository;
  RandomUserBloc(RandomUserRepository randomUserRepository)
      : _randomUserRepository = randomUserRepository,
        super(RandomUserInitial());

  @override
  Stream<RandomUserState> mapEventToState(
    RandomUserEvent event,
  ) async* {
    if (event is GetUsers) {
      yield* _mapGetUsersToState();
    }
  }

  Stream<RandomUserState> _mapGetUsersToState() async* {
    yield RandomUserLoading();
    try {
      final users = await _randomUserRepository.getRandomUsers();
      if (users != null)
        yield RandomUserSuccess(users);
      else
        yield RandomUserError(NullUsersException(Constants.USERS_NOT_FOUND));
    } on Exception catch (e) {
      yield RandomUserError(e);
    }
  }
}

class NullUsersException implements Exception {
  final String message;
  const NullUsersException(this.message);
}
