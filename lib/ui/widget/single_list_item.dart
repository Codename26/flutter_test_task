import 'package:flutter/material.dart';
import 'package:flutter_test_task/ui/common/theme.dart' as Theme;

class SingleListItem extends StatelessWidget {
  // final RandomUser user;
  SingleListItem({required Key key}) : super(key: key);

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
          child: Column(
            children: [
              Text('Title'),
              Text('Desc'),
            ],
          ),
        ),
      ),
    );
  }
}
