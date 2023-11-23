import 'package:flutter/material.dart';

class TitleValueWidget extends StatelessWidget {
  final String title;
  final String value;
  final bool useColumn;
  const TitleValueWidget(
      {super.key,
      required this.title,
      required this.value,
      this.useColumn = false});

  @override
  Widget build(BuildContext context) {
    if (useColumn) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [Text('$title:'), Text(value)],
      );
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(child: Text(title)),
        const Text(':'),
        Expanded(
            child: Text(
          value,
          textAlign: TextAlign.end,
        )),
      ],
    );
  }
}
