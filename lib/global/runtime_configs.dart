import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

enum UiLayoutMode { portrait, landscape }

class RuntimeConfigs {
  static final RuntimeConfigs _singleton = RuntimeConfigs._internal();
  factory RuntimeConfigs() {
    return _singleton;
  }
  RuntimeConfigs._internal();

  static GlobalKey<NavigatorState> navigatorKey =
      Get.find<GlobalKey<NavigatorState>>();
  static bool isTesting = false;
  static bool isWidgetTesting = false;
  static bool isLoggedIn = false;
  static double screenHeight =
      MediaQuery.of(navigatorKey.currentContext!).size.height;
  static double screenWidth =
      MediaQuery.of(navigatorKey.currentContext!).size.width;
  static double windowHeight =
      MediaQuery.of(navigatorKey.currentContext!).size.height;
  static double windowWidth =
      MediaQuery.of(navigatorKey.currentContext!).size.width;
  static UiLayoutMode currentLayoutMode =
      kIsWeb ? UiLayoutMode.landscape : UiLayoutMode.portrait;
}
