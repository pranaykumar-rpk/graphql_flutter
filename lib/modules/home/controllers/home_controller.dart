import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_example/modules/home/models/home_state_model.dart';

class HomeController extends Cubit<HomeStateModel> {
  HomeController() : super(HomeStateModel());

  void setSelectedIndex(int index) {
    emit(state.copyWith(selectedIndex: index));
  }
}
