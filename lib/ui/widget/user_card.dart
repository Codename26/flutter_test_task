import 'package:flutter/material.dart';
import 'package:flutter_test_task/models/randomUser.dart';
import 'package:flutter_test_task/ui/common/constants.dart';
import 'package:flutter_test_task/ui/common/theme.dart' as Theme;

import 'data_entry.dart';

class UserCard extends StatelessWidget {
  final RandomUser _user;
  UserCard(RandomUser user) : _user = user;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.network(
          _user.picture.large,
          width: Theme.photoSize,
          height: Theme.photoSize,
        ),
        Expanded(
          child: Column(
            children: [
              DataEntry(Constants.NAME, _user.name.toString()),
              DataEntry(Constants.EMAIL, _user.email),
              DataEntry(Constants.PHONE, _user.phone),
            ],
          ),
        ),
      ],
    );
  }
}
