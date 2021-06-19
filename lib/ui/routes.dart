import 'package:flutter/material.dart';
import 'package:flutter_test_task/ui/common/constants.dart';
import 'package:flutter_test_task/ui/routes/details_page.dart';
import 'package:flutter_test_task/ui/routes/home_page.dart';

class RoutesGenerator {
  static const String homePage = '/';
  static const String detailsPage = '/details';

  RoutesGenerator._();
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case detailsPage:
        return MaterialPageRoute(builder: (_) => const DetailsPage());
      default:
        throw RouteException(Constants.ROUTE_NOT_FOUND);
    }
  }
}

class RouteException implements Exception {
  final String message;
  const RouteException(this.message);
}
