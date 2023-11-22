import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/instance_manager.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_example/global/app_colors.dart';
import 'package:graphql_example/global/routing/custom_routing.dart';
import 'package:graphql_example/global/routing/routes.dart';
import 'package:graphql_example/modules/home/controllers/home_controller.dart';
import 'package:graphql_example/modules/home/models/home_state_model.dart';
import 'package:graphql_example/modules/home/views/screens/home_screen.dart';
import 'package:graphql_example/modules/home/views/screens/transactions_screen.dart';

class AccountDetails extends StatefulWidget {
  const AccountDetails({super.key});

  @override
  State<AccountDetails> createState() => _AccountDetailsState();
}

class _AccountDetailsState extends State<AccountDetails> {
  final HomeController controller = Get.find<HomeController>();

  @override
  void initState() {
    print("Account details init state was called");
    controller.fetchAcoountDetails();
    super.initState();
  }

  void _navigateToTransactions() {
    print("Navigating to transactions screen");
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const TransactionsScreen();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Accounts"),
        actions: [
          IconButton(
              icon: const Icon(Icons.refresh),
              color: AppColors.white,
              onPressed: () {
                controller.fetchAcoountDetails();
              })
        ],
      ),
      body: BlocBuilder<HomeController, HomeStateModel>(
          bloc: controller,
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state.accounts.isEmpty) {
              return const Center(
                child: Text('No Accounts found'),
              );
            }
            return ListView.builder(
                itemCount: state.accounts.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: _navigateToTransactions,
                    child: Card(
                        child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(state.accounts[index].accountHolder ?? "Name"),
                          Text(state.accounts[index].accountNumber ??
                              "Account number"),
                        ],
                      ),
                    )),
                  );
                });
          }),
    );
  }
}
