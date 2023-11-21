import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_example/global/routing/routes.dart';
import 'package:graphql_example/global/runtime_configs.dart';
import 'package:graphql_example/modules/authentication/views/screens/login.dart';
import 'package:graphql_example/modules/home/views/screens/home_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: NamedRoutes.login.path,
  navigatorKey: RuntimeConfigs.navigatorKey,
  routes: <RouteBase>[
    GoRoute(
      path: NamedRoutes.login.path,
      builder: (BuildContext context, GoRouterState state) {
        return const LoginScreen();
      },
    ),
    GoRoute(
      path: NamedRoutes.home.path,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
  ],
);
