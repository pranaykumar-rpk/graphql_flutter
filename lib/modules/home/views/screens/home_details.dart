import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/instance_manager.dart';
import 'package:graphql_example/global/app_colors.dart';
import 'package:graphql_example/global/buttons/primary_button.dart';
import 'package:graphql_example/modules/home/controllers/home_controller.dart';
import 'package:graphql_example/modules/home/models/home_state_model.dart';

class HomeDetails extends StatefulWidget {
  final String title;
  const HomeDetails({super.key, required this.title});

  @override
  State<HomeDetails> createState() => _HomeDetailsState();
}

class _HomeDetailsState extends State<HomeDetails> {
  HomeController homeController = Get.find<HomeController>();

  @override
  void initState() {
    print("Home details init state was called");
    homeController.fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeController, HomeStateModel>(
        bloc: homeController,
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(widget.title),
            ),
            body: Builder(builder: (context) {
              if (state.isLoading) {
                return const Center(child: CircularProgressIndicator());
              } else {
                return Center(
                  child: PrimaryButton(
                    onPressed: homeController.fetchData,
                    child: const Text(
                      "Fetch data",
                      style: TextStyle(color: AppColors.white),
                    ),
                  ),
                );
              }
            }),
          );
        });
  }
}
