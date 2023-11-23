import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_example/global/routing/routes.dart';
import 'package:graphql_example/global/runtime_configs.dart';
import 'package:graphql_example/modules/authentication/views/screens/login.dart';
import 'package:graphql_example/modules/home/views/screens/contacts_screen.dart';
import 'package:graphql_example/modules/home/views/screens/home_screen.dart';
import 'package:graphql_example/modules/home/views/screens/pdf_viewer_screen.dart';
import 'package:graphql_example/modules/home/views/screens/statements_screen.dart';
import 'package:graphql_example/modules/home/views/screens/transactions_screen.dart';

final GoRouter router = GoRouter(
    initialLocation: NamedRoutes.home.path,
    navigatorKey: RuntimeConfigs.navigatorKey,
    redirect: (context, state) {
      if (RuntimeConfigs.isLoggedIn) {
        return null;
      } else {
        return NamedRoutes.login.path;
      }
    },
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
            String userName =
                (state.extra as Map<String, dynamic>?)?['userName'] ??
                    "Welcome";
            print('userName: $userName');
            return HomeScreen(
              userName: userName,
            );
          },
          routes: [
            GoRoute(
              name: NamedRoutes.transactions.path,
              path: NamedRoutes.transactions.path,
              builder: (BuildContext context, GoRouterState state) {
                //get the values from query params
                final Map<String, dynamic> queryParams =
                    state.queryParams ?? {};
                return TransactionsScreen(
                  accountHolder: queryParams['accountHolder'],
                  accountNumber: queryParams['accountNumber'],
                  accountType: queryParams['accountType'],
                  balance: queryParams['balance'],
                  id: queryParams['id'],
                );
              },
            ),
            GoRoute(
              name: NamedRoutes.statements.path,
              path: NamedRoutes.statements.path,
              builder: (BuildContext context, GoRouterState state) {
                return const StatementsScreen();
              },
            ),
            GoRoute(
              name: NamedRoutes.contacts.path,
              path: NamedRoutes.contacts.path,
              builder: (BuildContext context, GoRouterState state) {
                return const ContactsScreen();
              },
            ),
            GoRoute(
              name: NamedRoutes.pdfViewer.path,
              path: NamedRoutes.pdfViewer.path,
              builder: (BuildContext context, GoRouterState state) {
                return const PdfViewerScreen();
              },
            ),
          ]),
    ]);
