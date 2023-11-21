import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:graphql_example/global/routing/route_config.dart';
import 'package:graphql_example/global/runtime_configs.dart';
import 'package:graphql_example/global/styles.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initHiveForFlutter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<NavigatorState> globalNavigatorKey = GlobalKey<NavigatorState>();
    Get.put(globalNavigatorKey);
    RuntimeConfigs.navigatorKey = globalNavigatorKey;
    return MaterialApp.router(
      title: 'GraphQL',
      theme: appTheme,
      routerConfig: router,
    );
  }
}
