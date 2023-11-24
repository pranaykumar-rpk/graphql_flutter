import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/instance_manager.dart';
import 'package:graphql_example/global/app_colors.dart';
import 'package:graphql_example/global/routing/custom_routing.dart';
import 'package:graphql_example/global/routing/routes.dart';
import 'package:graphql_example/modules/home/controllers/home_controller.dart';
import 'package:graphql_example/modules/home/models/account_model.dart';
import 'package:graphql_example/modules/home/models/home_state_model.dart';
import 'package:graphql_example/modules/home/views/widgets/account_card.dart';

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
    if (controller.state.accounts.isEmpty) {
      controller.fetchAcoountDetails();
    }
    super.initState();
  }

  void _navigateToTransactions(AccountModel account) {
    print("Navigating to transactions screen");
    CustomRouting.pushNamed(NamedRoutes.transactions.path, arguments: {
      "accountHolder": account.accountHolder ?? "",
      "accountNumber": account.accountNumber ?? "",
      "accountType": account.accountType ?? "",
      "balance": (account.balance ?? 0).toString(),
      "id": account.id ?? '',
    });
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
            if (state.isLoadingAccountsData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state.accounts.isEmpty) {
              return const Center(
                child: Text('No Accounts found'),
              );
            }
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                  itemCount: state.accounts.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () =>
                            _navigateToTransactions(state.accounts[index]),
                        child: AccountTile(
                          account: state.accounts[index],
                        ));
                  }),
            );
          }),
    );
  }
}
