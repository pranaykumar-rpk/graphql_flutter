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
  group('LoginController', () {
    late MockLoginController loginController;

    setUp(() {
      loginController = MockLoginController();
    });

    test("Verify Initial values are correct", () {
      expect(loginController.state.isLoading, false);
      expect(loginController.state.showPassword, false);
      expect(loginController.loginForm.controls['userName']?.value, null);
      expect(loginController.loginForm.controls['password']?.value, null);
    });

    blocTest<MockLoginController, LoginStateModel>(
      'emits loading state, then success state',
      build: () => loginController,
      act: (controller) async {
        await controller.validateCredentials();
      },
      expect: () => [
        (loginController.state.isLoading, true),
        (loginController.state.isLoading, false),
      ],
    );

    blocTest<LoginController, LoginStateModel>(
      'toggles password visibility',
      build: () => loginController,
      act: (controller) async {
        controller.toggleVisibility();
      },
      expect: () => [
        LoginStateModel(showPassword: true),
      ],
    );

    blocTest<LoginController, LoginStateModel>(
      'emits loading state, then success state with correct userName',
      build: () => loginController,
      act: (controller) async {
        // Mocking the form controls using mocktail
        when(() => controller.loginForm.controls['userName']?.value)
            .thenReturn(() => 'testUser');
        when(() => controller.loginForm.controls['password']?.value)
            .thenReturn(() => 'testPassword');

        await controller.validateCredentials();
      },
      expect: () => [
        LoginStateModel(isLoading: true),
        LoginStateModel(isLoading: false),
      ],
      verify: (controller) {
        // Add verification logic here
        verify(() => controller.loginForm.controls['userName']?.value)
            .called(1);
      },
    );
  });
}
