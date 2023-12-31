import 'package:flutter/material.dart';
import 'package:graphql_example/global/constants.dart';
import 'package:graphql_example/global/helper_functions.dart';
import 'package:graphql_example/global/routing/custom_routing.dart';
import 'package:graphql_example/global/routing/routes.dart';

class ServiceDetails extends StatefulWidget {
  const ServiceDetails({super.key});

  @override
  State<ServiceDetails> createState() => _ServiceDetailsState();
}

class _ServiceDetailsState extends State<ServiceDetails> {
  void _handleLoanTap() {
    showSnackBar(
        title: 'Somehting went wrong!. Please try again',
        context: context,
        type: SnackType.error);
  }

  void _handleContactsTap() {
    CustomRouting.pushNamed(NamedRoutes.contacts.path);
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) {
    //       return const ContactsScreen();
    //     },
    //   ),
    // );
  }

  void _handleStatementTap() {
    CustomRouting.pushNamed(NamedRoutes.statements.path);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Services'),
      ),
      body: Column(
        children: [
          ListTile(
            onTap: _handleLoanTap,
            leading: const Icon(Icons.money_off),
            title: const Text('Loans'),
          ),
          ListTile(
            onTap: _handleStatementTap,
            leading: const Icon(Icons.list_alt),
            title: const Text('Statements'),
          ),
          ListTile(
            onTap: _handleContactsTap,
            leading: const Icon(Icons.contacts),
            title: const Text('Contacts'),
          )
        ],
      ),
    );
  }
}
