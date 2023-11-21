import 'package:flutter/material.dart';
import 'package:graphql_example/modules/home/models/transaction_model.dart';
import 'package:graphql_example/modules/home/views/widgets/transaction_card.dart';

class UpcomingBills extends StatelessWidget {
  final List<TransactionModel> transactions;
  const UpcomingBills({super.key, required this.transactions});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Upcoming Bills"),
          ),
          ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: transactions
                .map((transaction) => TransactionCard(transaction: transaction))
                .toList(),
          ),
        ],
      ),
    );
  }
}
