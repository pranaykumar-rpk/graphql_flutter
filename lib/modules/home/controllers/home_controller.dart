import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_example/global/constants.dart';
import 'package:graphql_example/global/helper_functions.dart';
import 'package:graphql_example/modules/home/models/account_model.dart';
import 'package:graphql_example/modules/home/models/accounts_model.dart';
import 'package:graphql_example/modules/home/models/home_model.dart';
import 'package:graphql_example/modules/home/models/home_state_model.dart';
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
    emit(state.copyWith(isLoading: true));
    try {
      print('Calling homefeed api');
      dynamic result = await respository.fetchHomeData();
      emit(state.copyWith(isLoading: false));
      print("Respone from home feed");
      print(result.toString());
      if (result == null || result == {}) {
        showSnackBar(title: "Error loading data", type: SnackType.error);
      } else {
        HomeModel model = HomeModel.fromJson(result);
        emit(state.copyWith(homeData: model));
      }
    } catch (e) {
      emit(state.copyWith(isLoading: false));
      print('Error calling home feed');
      print(e.toString());
    }
  }

  Future<void> fetchAcoountDetails() async {
    emit(state.copyWith(isLoading: true));
    try {
      print('Calling homefeed api');
      dynamic result = await respository.fetchAccountsData();
      emit(state.copyWith(isLoading: false));
      print("Respone from home feed");
      print(result.toString());
      if (result == null || result == {} || result == []) {
        showSnackBar(title: "Error loading data", type: SnackType.error);
      } else {
        AccountsModel model = AccountsModel.fromJson(result);
        emit(state.copyWith(accounts: model.accounts));
      }
    } catch (e) {
      emit(state.copyWith(isLoading: false));
      print('Error calling home feed');
      print(e.toString());
    }
  }

  Future<void> fetchTransactions() async {
    emit(state.copyWith(isLoading: true));
    try {
      print('Calling Transactions api');
      dynamic result = await respository.fetchTransactionsData();
      emit(state.copyWith(isLoading: false));
      print("Respone from transactions feed");
      print(result.toString());
      if (result == null || result == {} || result == []) {
        showSnackBar(
            title: "Error loading transactions", type: SnackType.error);
      } else {
        TransactionsModel model = TransactionsModel.fromJson(result);
        emit(state.copyWith(transactions: model.transactions));
        print('state.transactions:${state.transactions}');
      }
    } catch (e) {
      emit(state.copyWith(isLoading: false));
      print('Error calling home feed');
      print(e.toString());
    }
  }

  Future<void> fetchStatements() async {
    emit(state.copyWith(isLoading: true));
    try {
      print('Calling Statements api');
      dynamic result = await respository.fetchStatementsData();
      emit(state.copyWith(isLoading: false));
      print("Respone from Statements feed");
      print(result.toString());
      if (result == null || result == {} || result == []) {
        showSnackBar(title: "Error loading Statements", type: SnackType.error);
      } else {
        StatementsModel model = StatementsModel.fromJson(result);
        emit(state.copyWith(statements: model.statements));
        
      }
    } catch (e) {
      emit(state.copyWith(isLoading: false));
      print('Error calling home feed');
      print(e.toString());
    }
  }
}
