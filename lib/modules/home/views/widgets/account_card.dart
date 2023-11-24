import 'package:flutter/material.dart';
import 'package:graphql_example/global/app_colors.dart';
import 'package:graphql_example/modules/home/models/account_model.dart';
import 'package:graphql_example/modules/home/models/home_model.dart';

class AccountCard extends StatelessWidget {
  final HomeModel data;
  const AccountCard({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      color: AppColors.primary,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(data.name ?? '',
                      style: const TextStyle(
                          color: AppColors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w500)),
                  const SizedBox(height: 2),
                  Text("Ac no: ${data.accountNumber}",
                      style: const TextStyle(
                          color: AppColors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w500)),
                  const SizedBox(height: 4),
                  Text(
                      '${data.address?.streetName ?? ""}, ${data.address?.buildingNumber ?? ""}, ${data.address?.townName ?? ""}, ${data.address?.country ?? ""} - ${data.address?.postCode ?? ""}',
                      style: const TextStyle(
                          color: AppColors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w500)),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                text: data.balance.toString(),
                style: const TextStyle(
                    color: AppColors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w500),
                children: const <TextSpan>[
                  TextSpan(
                      text: ' USD',
                      style: TextStyle(
                          color: AppColors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w500)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AccountTile extends StatelessWidget {
  final AccountModel account;
  const AccountTile({super.key, required this.account});

  @override
  Widget build(BuildContext context) {
    String profileName = account.accountHolder!.split(" ").first[0] +
        account.accountHolder!.split(" ").last[0];
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 24,
              backgroundColor: AppColors.primary,
              child: Text(profileName,
                  style: const TextStyle(
                      fontSize: 18,
                      color: AppColors.white,
                      fontWeight: FontWeight.w400)),
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(account.accountHolder ?? '',
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w400)),
                  const SizedBox(height: 2),
                  Text("Ac no: ${account.accountNumber}",
                      style: const TextStyle(
                          fontSize: 12,
                          color: AppColors.ashGrey,
                          fontWeight: FontWeight.w400)),
                  const SizedBox(height: 4),
                ],
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                text: "\$ ${account.balance}",
                style: const TextStyle(
                    fontSize: 14,
                    color: AppColors.black,
                    fontWeight: FontWeight.w500),
                // children: const <TextSpan>[
                //   TextSpan(
                //       text: ' USD',
                //       style: TextStyle(
                //           fontSize: 10,
                //           color: AppColors.black,
                //           fontWeight: FontWeight.w500)
                // ),
                // ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
