import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/instance_manager.dart';
import 'package:graphql_example/modules/home/controllers/home_controller.dart';
import 'package:graphql_example/modules/home/models/home_state_model.dart';
import 'package:graphql_example/modules/home/views/screens/account_details.dart';
import 'package:graphql_example/modules/home/views/screens/home_details.dart';
import 'package:graphql_example/modules/home/views/screens/service_details.dart';
import 'package:graphql_example/modules/home/views/widgets/home_bottom_navigation.dart';

class HomeScreen extends StatefulWidget {
  final String? userName;
  const HomeScreen({super.key, this.userName});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeController homeController = Get.put(HomeController());

  @override
  void initState() {
    print('Called init state in home screen');
    print('Called init state in home screen');
    super.initState();
  }

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
                return HomeDetails(
                  title: widget.userName ?? "Welcome",
                );
              } else if (state.selectedIndex == 1) {
                return const AccountDetails();
              } else {
                return const ServiceDetails();
              }
            },
          ),
        );
      },
    );
  }
}
