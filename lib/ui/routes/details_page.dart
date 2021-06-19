import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_task/bloc/current_user/current_user_bloc.dart';
import 'package:flutter_test_task/ui/common/snackbar_helper.dart';
import 'package:flutter_test_task/ui/common/theme.dart' as Theme;
import 'package:flutter_test_task/ui/widget/user_card.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage();

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<CurrentUserBloc>(context).add(GetCurrentUser());
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Icon(Icons.arrow_back),
          backgroundColor: Theme.gradientLightBlue,
        ),
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Theme.gradientLightBlue, Theme.gradientDarkBlue],
            )),
            child: _buildBody()));
  }

  Widget _buildBody() {
    return BlocListener<CurrentUserBloc, CurrentUserState>(
      listener: (context, state) {
        if (state is CurrentUserError) {
          SnackBarHelper.showSnackbar(context, state.exception.toString());
        }
      },
      child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Theme.gradientLightBlue, Theme.gradientDarkBlue],
          )),
          child: Column(
            children: [
              Expanded(child: Container()),
              Expanded(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Theme.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(Theme.borderRadius16),
                            topLeft: Radius.circular(Theme.borderRadius16))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: Theme.horizontalPadding,
                          vertical: Theme.verticalPadding),
                      child: BlocBuilder<CurrentUserBloc, CurrentUserState>(
                        builder: (context, state) {
                          if (state is CurrentUserSuccess) {
                            return UserCard(state.user);
                          } else {
                            return Container();
                          }
                        },
                      ),
                    ),
                  ))
            ],
          )),
    );
  }
}
