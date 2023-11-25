import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql_example/global/runtime_configs.dart';
import 'package:graphql_example/modules/authentication/controllers/login_controller.dart';
import 'package:graphql_example/modules/authentication/models/login_state_model.dart';
import 'package:mockito/mockito.dart';

class MockLoginController extends MockCubit<LoginStateModel>
    implements LoginController {}

class MockLoginStateModel extends Mock implements LoginStateModel {}

void main() {
  RuntimeConfigs.isTesting = true;
  late LoginController loginController;

  setUp(() {
    loginController = LoginController();
  });

  group('LoginController', () {
    test('Check Initial values are correct', () {
      expect(loginController.state.isLoading, equals(false));
      expect(loginController.state.showPassword, equals(false));
      expect(
          loginController.loginForm.controls['userName']?.value, equals(null));
      expect(
          loginController.loginForm.controls['password']?.value, equals(null));
    });

    //intial state
    blocTest<LoginController, LoginStateModel>(
        'Initial stage of LoginController',
        build: () => loginController,
        expect: () => []);

    blocTest<LoginController, LoginStateModel>('Test toggle visibility',
        build: () => loginController,
        act: (c) {
          loginController.toggleVisibility();
        },
        expect: () => [LoginStateModel(showPassword: true)]);

    blocTest<LoginController, LoginStateModel>('Test validate credentials',
        build: () => loginController,
        act: (c) async {
          loginController.loginForm.controls['userName']?.updateValue('test');
          loginController.loginForm.controls['password']
              ?.updateValue('Password');
          await loginController.validateCredentials();
        },
        expect: () => [
              LoginStateModel(isLoading: true),
              LoginStateModel(isLoading: false)
            ]);
  });
}
