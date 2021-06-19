import 'package:flutter/material.dart';

import 'constants.dart';

class SnackBarHelper {
  static void showSnackbar(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Text(message),
      action: SnackBarAction(
        label: Constants.OK,
        onPressed: () {
          ScaffoldMessenger.of(context).clearSnackBars();
        },
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
