import 'package:flutter/material.dart';

class TitleValueWidget extends StatelessWidget {
  final String title;
  final String value;
  const TitleValueWidget({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
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
