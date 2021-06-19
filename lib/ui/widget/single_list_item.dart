import 'package:flutter/material.dart';
import 'package:flutter_test_task/models/randomUser.dart';
import 'package:flutter_test_task/ui/common/theme.dart' as Theme;

class SingleListItem extends StatelessWidget {
  final RandomUser user;
  SingleListItem({required Key key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Theme.allPadding),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Theme.borderRadius),
            color: Theme.bottomGrey),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: Theme.verticalPadding),
          child: Row(
            children: [
              Image.network(
                user.picture.thumbnail,
                width: Theme.smallPhotoSize,
                height: Theme.smallPhotoSize,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(user.name.toString()),
                  SizedBox(
                    height: 4,
                  ),
                  Text(user.email),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
