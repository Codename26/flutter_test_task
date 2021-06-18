import 'package:flutter/material.dart';
import 'package:flutter_test_task/ui/common/theme.dart';
import 'package:flutter_test_task/ui/screen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Test Task',
        theme: appTheme,
        home: HomeScreen());
  }
}
