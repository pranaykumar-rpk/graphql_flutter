import 'package:flutter/material.dart';
import 'package:graphql_example/global/constants.dart';
import 'package:graphql_example/global/helper_functions.dart';
import 'package:graphql_example/modules/home/views/screens/statements_screen.dart';

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
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const Scaffold(
            body: Center(
              child: Text('Contacts'),
            ),
          );
        },
      ),
    );
  }

  void _handleStatementTap() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const StatementsScreen();
        },
      ),
    );
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
