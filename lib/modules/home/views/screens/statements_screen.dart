import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/instance_manager.dart';
import 'package:graphql_example/modules/home/controllers/home_controller.dart';
import 'package:graphql_example/modules/home/models/home_state_model.dart';

class StatementsScreen extends StatefulWidget {
  const StatementsScreen({super.key});

  @override
  State<StatementsScreen> createState() => _StatementsScreenState();
}

class _StatementsScreenState extends State<StatementsScreen> {
  final HomeController homeController = Get.find<HomeController>();

  @override
  void initState() {
    if (homeController.state.statements.isEmpty) {
      homeController.fetchStatements();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Statements'),
          actions: [
            IconButton(
                onPressed: homeController.fetchStatements,
                icon: const Icon(Icons.refresh))
          ],
        ),
        body: BlocBuilder<HomeController, HomeStateModel>(
          bloc: homeController,
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state.statements.isEmpty) {
              return const Center(
                child: Text("No statements found"),
              );
            }
            return ListView.builder(
                itemCount: state.statements.length,
                itemBuilder: (context, index) {
                  return Card(
                      child: ListTile(
                    title: Text(state.statements[index].description??""),
                    subtitle: Text(state.statements[index].amount.toString()),
                  ));
                });
          },
        ));
  }
}
