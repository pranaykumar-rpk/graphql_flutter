import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_example/global/runtime_configs.dart';

//Custom Routing class to handle navigation in the app
class CustomRouting {
  static void goToRoute(
    String route, {
    Map<String, dynamic>? extra,
  }) {
    return GoRouter.of(RuntimeConfigs.navigatorKey.currentContext ??
            Get.find<GlobalKey<NavigatorState>>().currentContext!)
        .go(route, extra: extra);
  }

  static Future<dynamic>? push(String route) {
    //To goto next screen without clearing the stack
    return GoRouter.of(RuntimeConfigs.navigatorKey.currentContext ??
            Get.find<GlobalKey<NavigatorState>>().currentContext!)
        .push(
      route,
    );
  }

  static void go(String route, {Map<String, dynamic>? queryParams}) {
    //To goto next screen without clearing the stack
    GoRouter.of(RuntimeConfigs.navigatorKey.currentContext ??
            Get.find<GlobalKey<NavigatorState>>().currentContext!)
        .goNamed(route, queryParams: queryParams ?? {});
  }

  static Future<dynamic>? pushNamed(String route,
      {dynamic arguments, dynamic pathParams}) {
    return GoRouter.of(RuntimeConfigs.navigatorKey.currentContext ??
            Get.find<GlobalKey<NavigatorState>>().currentContext!)
        .pushNamed(route,
            queryParams: arguments ?? {},
            params: (pathParams ?? <String, String>{}));
  }

  static void replaceWithNamed(String route) {
    //replaces the current screen with new route
    GoRouter.of(RuntimeConfigs.navigatorKey.currentContext ??
            Get.find<GlobalKey<NavigatorState>>().currentContext!)
        .replaceNamed(route);
  }

  static void replaceStackWithRoute(String route,
      {Map<String, dynamic>? extras}) {
    return GoRouter.of(RuntimeConfigs.navigatorKey.currentContext ??
            Get.find<GlobalKey<NavigatorState>>().currentContext!)
        .go(
      route,
      extra: extras ?? {},
    );
  }

  static void replaceStackWithNamed(String route,
      {Map<String, dynamic>? arguments, Map<String, String>? pathParams}) {
    //clears the stack and replaces with new route
    return GoRouter.of(RuntimeConfigs.navigatorKey.currentContext ??
            Get.find<GlobalKey<NavigatorState>>().currentContext!)
        .goNamed(route, queryParams: arguments ?? {}, params: pathParams ?? {});
  }

  static void pop({dynamic result}) {
    //To go back to previous screen
    return GoRouter.of(RuntimeConfigs.navigatorKey.currentContext ??
            Get.find<GlobalKey<NavigatorState>>().currentContext!)
        .pop(result);
  }
}
