import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_task/ui/common/constants.dart';
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
    return Padding(
      padding: const EdgeInsets.only(top: Theme.verticalPadding),
      child: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: 15,
                  itemBuilder: (context, position) => InkWell(
                        onTap: () => _openDetailsPage(context),
                        child: SingleListItem(
                          key: Key(position.toString()),
                        ),
                      ))),
          const BottomBlock()
        ],
      ),
    );
  }

  void _openDetailsPage(BuildContext context) {
    Navigator.of(context)?.pushNamed(RoutesGenerator.detailsPage);
  }
}
