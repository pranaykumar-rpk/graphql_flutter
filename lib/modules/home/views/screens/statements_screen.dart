import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/instance_manager.dart';
import 'package:graphql_example/global/routing/custom_routing.dart';
import 'package:graphql_example/global/routing/routes.dart';
import 'package:graphql_example/modules/home/controllers/home_controller.dart';
import 'package:graphql_example/modules/home/models/home_state_model.dart';
import 'package:graphql_example/modules/home/models/statement_model.dart';
import 'package:graphql_example/modules/home/views/widgets/statement_card.dart';

class StatementsScreen extends StatefulWidget {
  const StatementsScreen({super.key});

  @override
  State<StatementsScreen> createState() => _StatementsScreenState();
}

class _StatementsScreenState extends State<StatementsScreen> {
  final HomeController homeController = Get.find<HomeController>();
  String selectedYear = '2019';

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
      statements.add(InkWell(
        onTap: _gotoPdfViewer,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: StatementCard(
            transaction: element,
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
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButton<String>(
                      isExpanded: true,
                      items: const [
                        DropdownMenuItem(
                          value: '2019',
                          child: Text('2019'),
                        ),
                        DropdownMenuItem(
                          value: '2020',
                          child: Text('2020'),
                        ),
                        DropdownMenuItem(
                          value: '2021',
                          child: Text('2021'),
                        ),
                        DropdownMenuItem(
                          value: '2022',
                          child: Text('2022'),
                        ),
                        DropdownMenuItem(
                          value: '2023',
                          child: Text('2023'),
                        ),
                      ],
                      onChanged: (value) {
                        setState(() {
                          selectedYear = value!;
                        });
                      },
                      value: selectedYear,
                    ),
                  ),
                  Expanded(
                    child: Builder(builder: (context) {
                      if (state.isLoadingStatementsData) {
                        return const Center(child: CircularProgressIndicator());
                      }
                      if (state.statements.isEmpty) {
                        return const Center(
                          child: Text("No statements found"),
                        );
                      }
                      Map<String, List<StatementModel>> statementsMap =
                          homeController.getStatementsMap();
                      return Expanded(
                        child: ListView(
                            children: getStatementsYear(
                                statementsMap[selectedYear] ?? [])),
                      );
                    }),
                  )
                ],
              ),
            );
          },
        ));
  }
}
