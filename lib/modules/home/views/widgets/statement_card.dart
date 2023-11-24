import 'package:flutter/material.dart';
import 'package:graphql_example/global/app_colors.dart';
import 'package:graphql_example/modules/home/models/statement_model.dart';

class StatementCard extends StatelessWidget {
  final StatementModel transaction;
  const StatementCard({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(transaction.description ?? "",
                    style: const TextStyle(
                        fontSize: 13, fontWeight: FontWeight.w400)),
                Text(transaction.date ?? "",
                    style: const TextStyle(
                        fontSize: 12,
                        color: AppColors.ashGrey,
                        fontWeight: FontWeight.w400)),
              ],
            )),
            const SizedBox(width: 8),
            Text(
                //add dollor sign
                "\$ ${(transaction.amount ?? 0) > 0 ? "+" : ""}${transaction.amount?.toStringAsFixed(2)}",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: (transaction.amount ?? 0) > 0
                        ? AppColors.success
                        : AppColors.error)),
          ],
        ),
      ),
    );
  }
}
