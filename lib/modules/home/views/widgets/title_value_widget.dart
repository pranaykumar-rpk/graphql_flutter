import 'package:flutter/material.dart';
import 'package:graphql_example/global/app_colors.dart';

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
        children: [
          Text(
            '$title:',
            style: const TextStyle(
                color: AppColors.ashGrey, fontWeight: FontWeight.w500),
          ),
          Text(
            value,
            style: const TextStyle(color: AppColors.primary, fontSize: 14),
          )
        ],
      );
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
            child: Text(
          title,
          style: const TextStyle(
              color: AppColors.ashGrey, fontWeight: FontWeight.w500),
        )),
        const Text(':'),
        Expanded(
            child: Text(
          value,
          style: const TextStyle(color: AppColors.primary, fontSize: 14),
          textAlign: TextAlign.end,
        )),
      ],
    );
  }
}
