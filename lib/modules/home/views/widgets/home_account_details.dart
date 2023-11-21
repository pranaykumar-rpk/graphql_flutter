import 'package:flutter/material.dart';
import 'package:graphql_example/modules/home/models/address_model.dart';
import 'package:graphql_example/modules/home/models/home_model.dart';
import 'package:graphql_example/modules/home/views/widgets/title_value_widget.dart';
import 'package:graphql_example/modules/home/views/widgets/transaction_list.dart';
import 'package:graphql_example/modules/home/views/widgets/upcoming_bills.dart';

class HomeAccountDetails extends StatelessWidget {
  final HomeModel data;
  const HomeAccountDetails({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AccountCard(data: data),
            const SizedBox(
              height: 20,
            ),
            HomeAddresCard(address: data.address!),
            const SizedBox(
              height: 20,
            ),
            TransactionList(transactions: data.recentTransactions),
            const SizedBox(
              height: 20,
            ),
            UpcomingBills(transactions: data.upcomingBills)
          ],
        ),
      ),
    );
  }
}

class AccountCard extends StatelessWidget {
  const AccountCard({
    super.key,
    required this.data,
  });

  final HomeModel data;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Text('Account deatils'),
            ),
            TitleValueWidget(title: "Name", value: data.name ?? ""),
            TitleValueWidget(
                title: "Account Number", value: data.accountNumber ?? ""),
            TitleValueWidget(
                title: "Balance", value: (data.balance ?? 0).toString()),
            TitleValueWidget(title: "Currency", value: data.currency ?? ""),
          ],
        ),
      ),
    );
  }
}

class HomeAddresCard extends StatelessWidget {
  final AddressModel address;
  const HomeAddresCard({super.key, required this.address});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Text('Address'),
            ),
            TitleValueWidget(
                title: "Street name", value: address.streetName ?? ""),
            TitleValueWidget(
                title: "Building number", value: address.buildingNumber ?? ""),
            TitleValueWidget(
                title: "Town name", value: address.townName.toString()),
            TitleValueWidget(title: "Postcode", value: address.postCode ?? ""),
            TitleValueWidget(title: "Country", value: address.country ?? ""),
          ],
        ),
      ),
    );
  }
}
