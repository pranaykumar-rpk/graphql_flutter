import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/instance_manager.dart';
import 'package:graphql_example/modules/home/controllers/home_controller.dart';
import 'package:graphql_example/modules/home/models/home_state_model.dart';
import 'package:graphql_example/modules/home/views/widgets/home_bottom_navigation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeController, HomeStateModel>(
      bloc: homeController,
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: const HomeBottomNavigationBar(),
          body: Builder(
            builder: (context) {
              if (state.selectedIndex == 0) {
                return HomeDetails();
              } else if (state.selectedIndex == 1) {
                return AccountsScreen();
              } else {
                return ServicesScreen();
              }
            },
          ),
        );
      },
    );
  }
}
