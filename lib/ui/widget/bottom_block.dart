import 'package:flutter/material.dart';
import 'package:flutter_test_task/ui/common/constants.dart';
import 'package:flutter_test_task/ui/common/theme.dart' as Theme;

class BottomBlock extends StatelessWidget {
  const BottomBlock();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(blurRadius: 5.0, spreadRadius: 1.0, color: Theme.shadowGrey)
        ],
        color: Theme.bottomGrey,
      ),
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: Theme.verticalPadding),
            child: Text(Constants.BOTTOM_TEXT),
          ),
          ElevatedButton(onPressed: () {}, child: Text(Constants.BUTTON_TEXT)),
          SizedBox(
            height: Theme.bottomScreenPadding,
          )
        ],
      ),
    );
  }
}
