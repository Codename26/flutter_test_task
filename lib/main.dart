import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_task/api/random_user_api.dart';
import 'package:flutter_test_task/bloc/random_user/random_user_bloc.dart';
import 'package:flutter_test_task/repository/random_user_repository.dart';
import 'package:flutter_test_task/ui/common/theme.dart';
import 'package:flutter_test_task/ui/routes.dart';

import 'bloc/current_user/current_user_bloc.dart';

void main() {
  runApp(const TestApp());
}

class TestApp extends StatelessWidget {
  const TestApp();

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<RandomUserRepository>(
      create: (context) => RandomUserRepository(randomUserApi: RandomUserApi()),
      child: MultiBlocProvider(
        providers: [
          BlocProvider<RandomUserBloc>(
              create: (context) => RandomUserBloc(
                  RepositoryProvider.of<RandomUserRepository>(context))),
          BlocProvider<CurrentUserBloc>(
              create: (context) => CurrentUserBloc(
                  RepositoryProvider.of<RandomUserRepository>(context))),
        ],
        child: MaterialApp(
          theme: appTheme,
          onGenerateTitle: (_) => 'Flutter Test Task',
          onGenerateRoute: RoutesGenerator.generateRoute,
          initialRoute: RoutesGenerator.homePage,
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
