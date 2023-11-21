import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_example/global/routing/routes.dart';
import 'package:graphql_example/global/runtime_configs.dart';
import 'package:graphql_example/modules/authentication/views/screens/login.dart';
import 'package:graphql_example/modules/home/views/screens/home_screen.dart';
import 'package:graphql_example/modules/spalsh/splash_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: NamedRoutes.splash.path,
  navigatorKey: RuntimeConfigs.navigatorKey,
  routes: <RouteBase>[
    GoRoute(
      path: NamedRoutes.splash.path,
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
    ),
    GoRoute(
      path: NamedRoutes.login.path,
      builder: (BuildContext context, GoRouterState state) {
        return const LoginScreen();
      },
    ),
    // StatefulShellRoute.indexedStack(
    //     parentNavigatorKey: RuntimeConfigs.navigatorKey,
    //     builder: (BuildContext context, GoRouterState state,
    //         StatefulNavigationShell navigationShell) {
    //       return const HomeScreen();
    //     },
    //     branches: <StatefulShellBranch>[
    //       StatefulShellBranch(
    //         navigatorKey: _sectionANavigatorKey,
    //         routes: <RouteBase>[
    //           GoRoute(
    //             // The screen to display as the root in the first tab of the
    //             // bottom navigation bar.
    //             path: '/a',
    //             builder: (BuildContext context, GoRouterState state) =>
    //                 const RootScreen(label: 'A', detailsPath: '/a/details'),
    //             routes: <RouteBase>[
    //               // The details screen to display stacked on navigator of the
    //               // first tab. This will cover screen A but not the application
    //               // shell (bottom navigation bar).
    //               GoRoute(
    //                 path: 'details',
    //                 builder: (BuildContext context, GoRouterState state) =>
    //                     const DetailsScreen(label: 'A'),
    //               ),
    //             ],
    //           ),
    //         ],
    //       ),
    //     ]),
    GoRoute(
      path: NamedRoutes.home.path,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
  ],
);
