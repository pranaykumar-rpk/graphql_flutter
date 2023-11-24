import 'package:flutter/material.dart';
import 'package:graphql_example/global/app_colors.dart';
import 'package:graphql_example/modules/home/models/transaction_model.dart';

class RecentTransactions extends StatelessWidget {
  final List<TransactionModel> transactions;
  final bool isBill;
  const RecentTransactions(
      {super.key, required this.transactions, this.isBill = false});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: transactions.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return TransactionTile(
              isBill: isBill, transaction: transactions[index]);
        });
  }
}

class TransactionTile extends StatelessWidget {
  final TransactionModel transaction;
  final bool isBill;
  const TransactionTile(
      {super.key, required this.transaction, this.isBill = false});

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
                        fontSize: 14, fontWeight: FontWeight.w500)),
                Text(transaction.date ?? "",
                    style: const TextStyle(
                        fontSize: 12,
                        color: AppColors.ashGrey,
                        fontWeight: FontWeight.w400)),
                const SizedBox(
                  height: 4,
                ),
                if (!isBill)
                  Text(
                    "${transaction.fromAccount ?? ''}   ---->   ${transaction.toAccount ?? ''}",
                    style: const TextStyle(
                      color: AppColors.ashGrey,
                      fontSize: 12,
                    ),
                  )
              ],
            )),
            Text(
                //add dollor sign
                "\$ ${isBill ? "" : (transaction.amount ?? 0) > 0 ? "+" : ""}${transaction.amount?.toStringAsFixed(2)}",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: isBill
                        ? AppColors.black
                        : (transaction.amount ?? 0) > 0
                            ? AppColors.success
                            : AppColors.error)),
          ],
        ),
      ),
    );
  }
}
