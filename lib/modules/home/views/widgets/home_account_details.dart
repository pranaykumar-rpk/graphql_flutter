import 'package:flutter/material.dart';
import 'package:graphql_example/global/app_colors.dart';
import 'package:graphql_example/global/styles.dart';
import 'package:graphql_example/modules/home/models/address_model.dart';
import 'package:graphql_example/modules/home/models/home_model.dart';
import 'package:graphql_example/modules/home/views/widgets/account_card.dart';
import 'package:graphql_example/modules/home/views/widgets/recent_transactions.dart';
import 'package:graphql_example/modules/home/views/widgets/title_value_widget.dart';

class HomeAccountDetails extends StatelessWidget {
  final HomeModel data;
  const HomeAccountDetails({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                width: double.infinity,
                child: AccountCard(data: data),
              ),
            ]),
            const SizedBox(
              height: 16,
            ),
            Text('RECENT TRANSACTIONS', style: sectionTitleTextStyle),
            RecentTransactions(transactions: data.recentTransactions),
            const SizedBox(
              height: 16,
            ),
            Text('UPCOMING BILLS', style: sectionTitleTextStyle),
            RecentTransactions(transactions: data.upcomingBills, isBill: true),
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
