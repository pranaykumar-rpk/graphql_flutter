import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_example/global/constants.dart';
import 'package:graphql_example/global/helper_functions.dart';
import 'package:graphql_example/global/runtime_configs.dart';
import 'package:graphql_example/modules/home/models/accounts_model.dart';
import 'package:graphql_example/modules/home/models/home_model.dart';
import 'package:graphql_example/modules/home/models/home_state_model.dart';
import 'package:graphql_example/modules/home/models/statement_model.dart';
import 'package:graphql_example/modules/home/models/statements_model.dart';
import 'package:graphql_example/modules/home/models/transactions_model.dart';
import 'package:graphql_example/modules/home/repositories/home_repository.dart';

class HomeController extends Cubit<HomeStateModel> {
  HomeRepository respository = HomeRepository();
  HomeController() : super(HomeStateModel());

  void setSelectedIndex(int index) {
    emit(state.copyWith(selectedIndex: index));
  }

  Future<void> fetchData() async {
    emit(state.copyWith(isLoadingHomeData: true));
    try {
      print('Calling homefeed api');
      dynamic result = await respository.fetchHomeData();
      emit(state.copyWith(isLoadingHomeData: false));
      print("Respone from home feed");
      print(result.toString());
      if (result == null || result == {}) {
        showSnackBar(title: "Error loading data", type: SnackType.error);
      } else {
        HomeModel model = HomeModel.fromJson(result);
        emit(state.copyWith(homeData: model));
      }
    } catch (e) {
      emit(state.copyWith(isLoadingHomeData: false));
      print('Error calling home feed');
      print(e.toString());
      showSnackBar(title: 'Unable to connect to server');
    }
  }

  Future<void> fetchAcoountDetails() async {
    emit(state.copyWith(isLoadingAccountsData: true));
    try {
      dynamic result = await respository.fetchAccountsData();
      emit(state.copyWith(isLoadingAccountsData: false));
      print(result.toString());
      if (result == null || result == {} || result == []) {
        if (RuntimeConfigs.isTesting) {
          return;
        }
        showSnackBar(title: "Error loading data", type: SnackType.error);
      } else {
        AccountsModel model = AccountsModel.fromJson(result);
        emit(state.copyWith(accounts: model.accounts));
      }
    } catch (e) {
      print('Error calling home feed');
      print(e.toString());
    }
  }

  Future<void> fetchTransactions() async {
    emit(state.copyWith(isLoadingTransactionsData: true));
    try {
      print('Calling Transactions api');
      dynamic result = await respository.fetchTransactionsData();
      emit(state.copyWith(isLoadingTransactionsData: false));
      print("Respone from transactions feed");
      print(result.toString());
      if (result == null || result == {} || result == []) {
        if (RuntimeConfigs.isTesting) {
          return;
        }
        showSnackBar(
            title: "Error loading transactions", type: SnackType.error);
      } else {
        TransactionsModel model = TransactionsModel.fromJson(result);
        emit(state.copyWith(transactions: model.transactions));
        print('state.transactions:${state.transactions}');
      }
    } catch (e) {
      print('Error calling home feed');
      print(e.toString());
    }
  }

  Future<void> fetchStatements() async {
    emit(state.copyWith(isLoadingStatementsData: true));
    try {
      print('Calling Statements api');
      dynamic result = await respository.fetchStatementsData();
      emit(state.copyWith(isLoadingStatementsData: false));
      print("Respone from Statements feed");
      print(result.toString());
      if (result == null || result == {} || result == []) {
        if (RuntimeConfigs.isTesting) {
          return;
        }
        showSnackBar(title: "Error loading Statements", type: SnackType.error);
      } else {
        StatementsModel model = StatementsModel.fromJson(result);
        emit(state.copyWith(statements: model.statements));
      }
    } catch (e) {
      print('Error calling home feed');
      print(e.toString());
    }
  }

  Map<String, List<StatementModel>> getStatementsMap() {
    Map<String, List<StatementModel>> statementsMap = {};
    for (var element in state.statements) {
      String year = element.date!.substring(0, 4);
      if (statementsMap.containsKey(year)) {
        statementsMap[year]!.add(element);
      } else {
        statementsMap[year] = [element];
      }
    }
    return statementsMap;
  }

  Future<void> fetchContacts() async {
    emit(state.copyWith(isLoading: true));
    try {
      print('Calling Contacts api');
      Map<String, dynamic> result = await respository.fetchContactsData();
      print('result from contats api: $result');
      emit(state.copyWith(isLoading: false));
      if (result["isSuccess"] ?? false) {
      } else {
        String error = result["message"];
        emit(state.copyWith(
            message: error, isContactsFetchedSuccessfully: false));
        showSnackBar(
            title: "Something went wrong. Please try again",
            duration: const Duration(seconds: 5),
            type: SnackType.error);
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
