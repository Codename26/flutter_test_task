import 'dart:convert';

import 'package:flutter_test_task/api/random_user_api.dart';
import 'package:flutter_test_task/models/randomUser.dart';

class RandomUserRepository {
  final RandomUserApi _randomUserApi;
  final List<RandomUser> _users = [];
  String currentUser = '';

  RandomUserRepository({required RandomUserApi randomUserApi})
      : _randomUserApi = randomUserApi;

  Future<List<RandomUser>?> getRandomUsers() async {
    if (_users.isNotEmpty) return _users;
    final response = await _randomUserApi.getRandomUsers();
    _users.addAll(_parseResponse(response.body));
    return _users;
  }

  RandomUser getCurrentUser() {
    return _users.firstWhere((user) => user.email == currentUser);
  }

  List<RandomUser> _parseResponse(String responseBody) {
    final json = jsonDecode(responseBody);
    return (json['results'] as List)
        .map((element) => RandomUser.fromJson(element))
        .toList();
  }
}
