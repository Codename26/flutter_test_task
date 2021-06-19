import 'package:flutter/material.dart';
import 'package:flutter_test_task/ui/common/theme.dart';
import 'package:flutter_test_task/ui/routes.dart';

void main() {
  runApp(const TestApp());
}

class TestApp extends StatelessWidget {
  const TestApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      onGenerateTitle: (_) => 'Flutter Test Task',
      onGenerateRoute: RoutesGenerator.generateRoute,
      initialRoute: RoutesGenerator.homePage,
      debugShowCheckedModeBanner: false,
    );
  }
}
