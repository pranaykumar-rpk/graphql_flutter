import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/instance_manager.dart';
import 'package:graphql_example/modules/home/controllers/home_controller.dart';
import 'package:graphql_example/modules/home/models/home_state_model.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({super.key});

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  final HomeController homeController = Get.find<HomeController>();

  @override
  void initState() {
    homeController.fetchContacts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Contacts'),
        ),
        body: BlocBuilder<HomeController, HomeStateModel>(
          bloc: homeController,
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (!state.isContactsFetchedSuccessfully) {
              return Center(
                  child: Card(
                child: Text(state.message.toString()),
              ));
            }
            if (state.contacts.isEmpty) {
              return const Center(
                child: Text('No contacts found'),
              );
            }
            return const SizedBox();
          },
        ));
  }
}
