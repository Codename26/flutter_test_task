import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_task/ui/common/constants.dart';
import 'package:flutter_test_task/ui/common/theme.dart' as Theme;
import 'package:flutter_test_task/ui/widget/single_list_item.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
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

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.only(top: Theme.verticalPadding),
      child: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: 15,
                  itemBuilder: (context, position) => SingleListItem(
                        key: Key(position.toString()),
                      ))),
          _buildBottomBlock()
        ],
      ),
    );
  }

  Widget _buildBottomBlock() {
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
