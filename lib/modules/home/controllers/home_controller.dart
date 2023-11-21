import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_example/modules/home/models/home_state_model.dart';
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
        showSnackBar("Error loading data");
      }
    } catch (e) {
      emit(state.copyWith(isLoading: false));
      print('Error calling home feed');
      print(e.toString());
    }
  }
}
