import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_example/global/routing/custom_routing.dart';
import 'package:graphql_example/global/routing/routes.dart';
import 'package:graphql_example/modules/authentication/models/login_state_model.dart';
import 'package:reactive_forms/reactive_forms.dart';

class LoginController extends Cubit<LoginStateModel> {
  LoginController() : super(LoginStateModel());

  FormGroup loginForm = FormGroup({
    'email': FormControl<String>(validators: [
      Validators.required,
      Validators.email,
    ]),
    'password': FormControl<String>(validators: [
      Validators.required,
      Validators.minLength(8),
    ]),
  });

  validateCredentials() async {
    print("Called validate credentials method");
    emit(state.copyWith(isLoading: true));
    await Future.delayed(const Duration(seconds: 2), () {
      emit(state.copyWith(isLoading: false));
      CustomRouting.replaceStackWithNamed(NamedRoutes.home.path);
    });
  }
}
