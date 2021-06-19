import 'package:flutter_test_task/api/random_user_api.dart';
import 'package:flutter_test_task/models/randomUser.dart';

class RandomUserRepository {
  final RandomUserApi _randomUserApi;
  late List<RandomUser>? _users;

  RandomUserRepository({required RandomUserApi randomUserApi})
      : _randomUserApi = randomUserApi;

  Future<List<RandomUser>?> getRandomUsers() async {
    if (_users != null) return _users;
    final response = await _randomUserApi.getRandomUsers();
    print('');
  }
}
