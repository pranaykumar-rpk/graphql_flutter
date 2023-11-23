import 'package:flutter/material.dart';
import 'package:graphql_example/modules/home/views/widgets/account_transactions.dart';
import 'package:graphql_example/modules/home/views/widgets/title_value_widget.dart';

class TransactionsScreen extends StatefulWidget {
  final String? accountNumber;
  final String? id;
  final String? accountType;
  final String? balance;
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TitleValueWidget(
                                        useColumn: true,
                                        title: 'Name',
                                        value: widget.accountHolder ?? ''),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    TitleValueWidget(
                                        useColumn: true,
                                        title: 'Account number',
                                        value: widget.accountNumber ?? ''),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    TitleValueWidget(
                                        useColumn: true,
                                        title: 'Account type',
                                        value: widget.accountType ?? ''),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    TitleValueWidget(
                                        useColumn: true,
                                        title: 'Balance',
                                        value:
                                            (widget.balance ?? 0).toString()),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    TitleValueWidget(
                                        useColumn: true,
                                        title: 'ID',
                                        value: widget.id ?? ''),
                                  ],
                                ),
                              ),
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
