import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_task/bloc/current_user/current_user_bloc.dart';
import 'package:flutter_test_task/bloc/random_user/random_user_bloc.dart';
import 'package:flutter_test_task/models/randomUser.dart';
import 'package:flutter_test_task/ui/common/constants.dart';
import 'package:flutter_test_task/ui/common/snackbar_helper.dart';
import 'package:flutter_test_task/ui/common/theme.dart' as Theme;
import 'package:flutter_test_task/ui/routes.dart';
import 'package:flutter_test_task/ui/widget/bottom_block.dart';
import 'package:flutter_test_task/ui/widget/single_list_item.dart';

class HomePage extends StatefulWidget {
  const HomePage();

  @override
  _HomePageState createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    BlocProvider.of<RandomUserBloc>(context).add(GetUsers());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(context),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      actions: [
        Expanded(
            child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: Theme.horizontalPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(Constants.LEFT_APP_BAR_TEXT),
              const Text(Constants.RIGHT_APP_BAR_TEXT),
            ],
          ),
        ))
      ],
    );
  }

  Widget _buildBody(BuildContext context) {
    return BlocListener<RandomUserBloc, RandomUserState>(
      listener: (context, state) {
        if (state is RandomUserError) {
          SnackBarHelper.showSnackbar(context, state.e.toString());
        }
      },
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/abstract-background.jpg'),
                fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.only(top: Theme.verticalPadding),
          child: Column(
            children: [
              Expanded(child: BlocBuilder<RandomUserBloc, RandomUserState>(
                builder: (context, state) {
                  if (state is RandomUserSuccess) {
                    return _buildItemsList(state.users);
                  } else if (state is RandomUserLoading) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    return Container();
                  }
                },
              )),
              const BottomBlock()
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildItemsList(List<RandomUser> users) {
    return ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, position) => InkWell(
              onTap: () => _openDetailsPage(context, users[position].email),
              child: SingleListItem(
                key: Key(position.toString()),
                user: users[position],
              ),
            ));
  }

  void _openDetailsPage(BuildContext context, String id) {
    BlocProvider.of<CurrentUserBloc>(context).add(SetCurrentUser(id));
    Navigator.of(context).pushNamed(RoutesGenerator.detailsPage);
  }
}
