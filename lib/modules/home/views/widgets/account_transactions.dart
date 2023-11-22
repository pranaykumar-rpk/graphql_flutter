import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/instance_manager.dart';
import 'package:graphql_example/modules/home/controllers/home_controller.dart';
import 'package:graphql_example/modules/home/models/home_state_model.dart';
import 'package:graphql_example/modules/home/views/widgets/transaction_card.dart';

class AccountTransactions extends StatefulWidget {
  const AccountTransactions({super.key});

  @override
  State<AccountTransactions> createState() => _AccountTransactionsState();
}

class _AccountTransactionsState extends State<AccountTransactions> {
  HomeController homeController = Get.find<HomeController>();

  @override
  void initState() {
    if (homeController.state.transactions.isEmpty) {
      homeController.fetchTransactions();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeController, HomeStateModel>(
        bloc: homeController,
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.transactions.isEmpty) {
            return const Center(
              child: Text("No transactions found"),
            );
          }
          return ListView.builder(
              itemCount: state.transactions.length,
              itemBuilder: (context, index) {
                return Card(
                    child: TransactionCard(
                        transaction: state.transactions[index]));
              });
        });
  }
}
