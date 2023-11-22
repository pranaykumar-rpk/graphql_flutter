import 'package:flutter/material.dart';
import 'package:graphql_example/modules/home/views/screens/account_details.dart';
import 'package:graphql_example/modules/home/views/widgets/account_transactions.dart';
import 'package:graphql_example/modules/home/views/widgets/title_value_widget.dart';
import 'package:graphql_example/modules/home/views/widgets/transaction_list.dart';

class TransactionsScreen extends StatefulWidget {
  final String? accountNumber;
  final String? id;
  final String? accountType;
  final double? balance;
  final String? accountHolder;
  const TransactionsScreen(
      {super.key,
      this.accountNumber,
      this.id,
      this.accountType,
      this.balance,
      this.accountHolder});

  @override
  State<TransactionsScreen> createState() => _TransactionsScreenState();
}

class _TransactionsScreenState extends State<TransactionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Transactions"),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      TitleValueWidget(
                          title: 'Account number',
                          value: widget.accountNumber ?? 'abcd'),
                      TitleValueWidget(
                          title: 'Balance',
                          value: (widget.balance ?? 0).toString())
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: DefaultTabController(
                  length: 2,
                  child: Column(
                    children: [
                      const TabBar(
                        tabs: [
                          Tab(
                            text: "Transactions",
                          ),
                          Tab(
                            text: "Account Details",
                          )
                        ],
                      ),
                      Expanded(
                        child: TabBarView(children: [
                          const AccountTransactions(),
                          Card(
                            child: Column(
                              children: [
                                Text(widget.accountHolder ?? 'Name'),
                                Text(widget.accountNumber ?? '123'),
                                Text(widget.accountType ?? 'Savings'),
                                Text((widget.balance ?? 0).toString()),
                                Text(widget.id ?? '123')
                              ],
                            ),
                          )
                        ]),
                      )
                    ],
                  )),
            ),
          ],
        ));
  }
}
