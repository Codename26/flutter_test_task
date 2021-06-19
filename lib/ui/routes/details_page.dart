import 'package:flutter/material.dart';
import 'package:flutter_test_task/ui/common/theme.dart' as Theme;
import 'package:flutter_test_task/ui/widget/data_entry.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage();

  @override
  Widget build(BuildContext context) {
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
    return Container(
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
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          'https://randomuser.me/api/portraits/women/90.jpg',
                          width: Theme.photoSize,
                          height: Theme.photoSize,
                        ),
                        Column(
                          children: [
                            DataEntry('Name', 'Test'),
                            DataEntry('Name', 'Test'),
                            DataEntry('Name', 'Test'),
                            DataEntry('Name', 'Test'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ))
          ],
        ));
  }
}
