import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/instance_manager.dart';
import 'package:graphql_example/global/app_colors.dart';
import 'package:graphql_example/global/buttons/primary_button.dart';
import 'package:graphql_example/global/runtime_configs.dart';
import 'package:graphql_example/global/styles.dart';
import 'package:graphql_example/modules/authentication/controllers/login_controller.dart';
import 'package:graphql_example/modules/authentication/models/login_state_model.dart';
import 'package:reactive_forms/reactive_forms.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Login Screen', style: appBarTitleTextStyle)),
      body: BlocBuilder<LoginController, LoginStateModel>(
        bloc: loginController,
        builder: (context, state) {
          return ReactiveForm(
            formGroup: loginController.loginForm,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ReactiveTextField(
                    formControlName: 'userName',
                    decoration: getInputDecoration(hintText: 'Username'),
                    keyboardType: TextInputType.name,
                    validationMessages: {
                      'required': (error) => 'Username is required',
                      'minLength': (error) => 'Mimumn characters should be 4'
                    },
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  ReactiveTextField(
                    formControlName: 'password',
                    obscureText: !state.showPassword,
                    validationMessages: {
                      'required': (error) => 'Password is required',
                      'minLength': (error) => 'Mimumn characters should be 6'
                    },
                    decoration: getInputDecoration(
                        hintText: 'Password',
                        suffixicon: IconButton(
                            onPressed: loginController.toggleVisibility,
                            icon: Icon(state.showPassword
                                ? Icons.visibility
                                : Icons.visibility_off))),
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ReactiveFormConsumer(
                    builder: (BuildContext context, FormGroup formGroup,
                        Widget? child) {
                      return PrimaryButton(
                        // isDisabled: RuntimeConfigs.isTesting? false:formGroup.invalid,
                        isLoading: state.isLoading,
                        height: 50,
                        onPressed: loginController.validateCredentials,
                        child: const Text(
                          'Login',
                          style: TextStyle(color: AppColors.white),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
