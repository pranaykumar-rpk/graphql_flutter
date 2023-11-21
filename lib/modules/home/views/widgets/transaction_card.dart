import 'package:flutter/material.dart';
import 'package:graphql_example/modules/home/models/transaction_model.dart';

class TransactionCard extends StatelessWidget {
  final TransactionModel transaction;
  const TransactionCard({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(transaction.description ?? ''),
              Text(transaction.date ?? "")
            ],
          ),
          Text(transaction.amount.toString()),
          Text(
              "${transaction.fromAccount ?? ''}   ---->   ${transaction.toAccount ?? ''}")
        ],
      ),
    );
  }
}
