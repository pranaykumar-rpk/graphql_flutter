import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/instance_manager.dart';
import 'package:graphql_example/global/routing/custom_routing.dart';
import 'package:graphql_example/global/routing/routes.dart';
import 'package:graphql_example/modules/home/controllers/home_controller.dart';
import 'package:graphql_example/modules/home/models/home_state_model.dart';
import 'package:graphql_example/modules/home/models/statement_model.dart';
import 'package:graphql_example/modules/home/views/screens/pdf_viewer_screen.dart';

class StatementsScreen extends StatefulWidget {
  const StatementsScreen({super.key});

  @override
  State<StatementsScreen> createState() => _StatementsScreenState();
}

class _StatementsScreenState extends State<StatementsScreen> {
  final HomeController homeController = Get.find<HomeController>();

  @override
  void initState() {
    if (homeController.state.statements.isEmpty) {
      homeController.fetchStatements();
    }
    super.initState();
  }

  void _gotoPdfViewer() {
    CustomRouting.pushNamed(NamedRoutes.pdfViewer.path);
    // Navigator.push(context,
    //     MaterialPageRoute(builder: (context) => const PdfViewerScreen()));
  }

  getStatementsYear(List<StatementModel> list) {
    if (list.isEmpty) {
      return const [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("No statements found"),
        )
      ];
    }
    List<Widget> statements = [];
    for (var element in list) {
      statements.add(Card(
        child: InkWell(
          onTap: _gotoPdfViewer,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(element.description ?? ""),
              subtitle: Text(element.amount.toString()),
            ),
          ),
        ),
      ));
    }
    return statements;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Statements'),
          actions: [
            IconButton(
                onPressed: homeController.fetchStatements,
                icon: const Icon(Icons.refresh))
          ],
        ),
        body: BlocBuilder<HomeController, HomeStateModel>(
          bloc: homeController,
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state.statements.isEmpty) {
              return const Center(
                child: Text("No statements found"),
              );
            }
            Map<String, List<StatementModel>> statementsMap =
                homeController.getStatementsMap();
            print('Statements map: $statementsMap');
            print('statements keys: ${statementsMap.keys}');
            for (var element in statementsMap.keys) {
              print('element: $element');
              print('statementsMap[element]: ${statementsMap[element]}');
            }
            return SingleChildScrollView(
                child: Column(children: [
              ExpansionTile(
                title: const Text('2023'),
                children: getStatementsYear(statementsMap['2023'] ?? []),
              ),
              ExpansionTile(
                  title: const Text('2022'),
                  children: getStatementsYear(statementsMap['2022'] ?? [])),
              ExpansionTile(
                  title: const Text('2021'),
                  children: getStatementsYear(statementsMap['2021'] ?? [])),
              ExpansionTile(
                  title: const Text('2020'),
                  children: getStatementsYear(statementsMap['2020'] ?? [])),
              ExpansionTile(
                  title: const Text('2019'),
                  children: getStatementsYear(statementsMap['2019'] ?? [])),
            ]));
          },
        ));
  }
}
