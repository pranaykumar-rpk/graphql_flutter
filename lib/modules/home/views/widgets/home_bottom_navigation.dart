import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/instance_manager.dart';
import 'package:graphql_example/global/app_colors.dart';
import 'package:graphql_example/global/common_icon.dart';
import 'package:graphql_example/modules/home/controllers/home_controller.dart';
import 'package:graphql_example/modules/home/models/home_state_model.dart';

class HomeBottomNavigationBar extends StatefulWidget {
  const HomeBottomNavigationBar({super.key});

  @override
  State<HomeBottomNavigationBar> createState() =>
      _HomeBottomNavigationBarState();
}

class _HomeBottomNavigationBarState extends State<HomeBottomNavigationBar> {
  final HomeController homeController = Get.find<HomeController>();

  _handleOnTap(int index) {
    homeController.setSelectedIndex(index);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeController, HomeStateModel>(
        bloc: homeController,
        builder: (context, state) {
          return BottomNavigationBar(
            selectedItemColor: AppColors.primary,
            selectedLabelStyle: const TextStyle(color: AppColors.primary),
            onTap: _handleOnTap,
            currentIndex: state.selectedIndex,
            items: [
              BottomNavigationBarItem(
                icon: CommonIcon(
                  fileName: 'home',
                  color: state.selectedIndex == 0
                      ? AppColors.primary
                      : AppColors.ashGrey,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: CommonIcon(
                  fileName: 'account',
                  color: state.selectedIndex == 1
                      ? AppColors.primary
                      : AppColors.ashGrey,
                ),
                label: 'Accounts',
              ),
              BottomNavigationBarItem(
                icon: CommonIcon(
                  fileName: 'service',
                  color: state.selectedIndex == 2
                      ? AppColors.primary
                      : AppColors.ashGrey,
                ),
                label: 'Services',
              ),
            ],
          );
        });
  }
}
