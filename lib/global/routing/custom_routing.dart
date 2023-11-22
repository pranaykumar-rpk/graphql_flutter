import 'package:go_router/go_router.dart';
import 'package:graphql_example/global/runtime_configs.dart';

//Custom Routing class to handle navigation in the app
class CustomRouting {
  static final navigatorKey = RuntimeConfigs.navigatorKey;

  static Future<dynamic>? push(String route) {
    //To goto next screen without clearing the stack
    return GoRouter.of(navigatorKey.currentContext!).push(
      route,
    );
  }

  static Future<dynamic>? pushNamed(String route,
      {dynamic arguments, dynamic pathParams}) {
    //To goto next screen without clearing the stack
    return GoRouter.of(navigatorKey.currentContext!).pushNamed(route,
        queryParameters: arguments ?? {},
        pathParameters: (pathParams ?? <String, String>{}));
  }

  static Future<void> replaceWithNamed(String route) {
    //replaces the current screen with new route
    return GoRouter.of(navigatorKey.currentContext!).replaceNamed(route);
  }

  static void replaceStackWithRoute(String route) {
    return GoRouter.of(navigatorKey.currentContext!).go(
      route,
    );
  }

  static void replaceStackWithNamed(String route,
      {Map<String, dynamic>? arguments, Map<String, String>? pathParams}) {
    //clears the stack and replaces with new route
    return GoRouter.of(navigatorKey.currentContext!).goNamed(route,
        queryParameters: arguments ?? {}, pathParameters: pathParams ?? {});
  }

  static void pop({dynamic result}) {
    //To go back to previous screen
    return GoRouter.of(navigatorKey.currentContext!).pop(result);
  }
}
