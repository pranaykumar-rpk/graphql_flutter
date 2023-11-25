import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_example/global/routing/custom_routing.dart';
import 'package:graphql_example/global/routing/routes.dart';
import 'package:graphql_example/global/runtime_configs.dart';
import 'package:graphql_example/modules/authentication/models/login_state_model.dart';
import 'package:reactive_forms/reactive_forms.dart';

class LoginController extends Cubit<LoginStateModel> {
  LoginController() : super(LoginStateModel());

  FormGroup loginForm = FormGroup({
    'userName': FormControl<String>(
        validators: [Validators.required, Validators.minLength(4)]),
    'password': FormControl<String>(validators: [
      Validators.required,
      Validators.minLength(6),
    ]),
  });

  validateCredentials() async {
    print("Called validate credentials method");
    emit(state.copyWith(isLoading: true));
    await Future.delayed(const Duration(seconds: 2), () {
      emit(state.copyWith(isLoading: false));
      RuntimeConfigs.isLoggedIn = true;
      String userName = (loginForm.controls["userName"]?.value ?? "") as String;
      CustomRouting.goToRoute(NamedRoutes.home.path,
          extra: {"userName": userName});
      // if (RuntimeConfigs.isWidgetTesting || !RuntimeConfigs.isTesting) {
      //   CustomRouting.goToRoute(NamedRoutes.home.path,
      //       extra: {"userName": userName});
      // }
    });
  }

  void toggleVisibility() {
    emit(state.copyWith(showPassword: !state.showPassword));
  }
}
