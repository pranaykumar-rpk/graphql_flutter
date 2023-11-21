import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/instance_manager.dart';
import 'package:graphql_example/global/app_colors.dart';
import 'package:graphql_example/global/buttons/primary_button.dart';
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
      appBar: AppBar(title: const Text('Login', style: appBarTitleTextStyle)),
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
                    formControlName: 'email',
                    decoration: getInputDecoration(hintText: 'Email'),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  ReactiveTextField(
                    formControlName: 'password',
                    obscureText: state.showPassword,
                    decoration: getInputDecoration(
                        hintText: 'Password',
                        suffixicon: IconButton(
                            onPressed: () {},
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
                        // isDisabled: formGroup.invalid,
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
