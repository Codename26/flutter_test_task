import 'package:flutter/material.dart';
import 'package:flutter_test_task/ui/common/theme.dart' as Theme;

class DataEntry extends StatelessWidget {
  final String dataEntryName;
  final String dataEntryValue;
  const DataEntry(this.dataEntryName, this.dataEntryValue);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Theme.verticalPadding),
      child: Row(
        children: [
          Text('$dataEntryName:'),
          SizedBox(
            width: 16,
          ),
          Text(dataEntryValue),
        ],
      ),
    );
  }
}
