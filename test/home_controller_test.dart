import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:graphql_example/modules/home/controllers/home_controller.dart';
import 'package:graphql_example/modules/home/models/home_state_model.dart';
import 'package:graphql_example/modules/home/repositories/home_repository.dart';

class MockHomeRepository extends Mock implements HomeRepository {}

class MockHomeController extends MockCubit<HomeStateModel>
    implements HomeController {}

class MockHomeStateModel extends Mock implements HomeStateModel {}

void main() {
  group('HomeController', () {
    late MockHomeController homeController;
    late MockHomeRepository mockRepository;

    setUp(() {
      mockRepository = MockHomeRepository();
      homeController = MockHomeController();
      homeController.respository = mockRepository;
    });

    blocTest(
      'emits loading and success states for fetchHomeData',
      build: () => homeController,
      act: (MockHomeController controller) async {
        when(controller.fetchData()).thenAnswer((_) async {});
      },
      expect: () => [
        expect(homeController.state.isLoadingHomeData, true),
        expect(homeController.state.isLoadingHomeData, false),
      ],
    );

    blocTest<HomeController, HomeStateModel>(
      'emits loading and success states for fetchAccountsData',
      build: () => homeController,
      act: (controller) async {
        when(mockRepository.fetchAccountsData()).thenAnswer((_) async => {});
        await controller.fetchAcoountDetails();
      },
      expect: () => [
        expect(homeController.state.isLoadingAccountsData, true),
        expect(homeController.state.isLoadingAccountsData, false),
      ],
    );

    blocTest<HomeController, HomeStateModel>(
      'emits loading and success states for fetchTransactionsData',
      build: () => homeController,
      act: (controller) async {
        when(mockRepository.fetchTransactionsData())
            .thenAnswer((_) async => {});
        await controller.fetchTransactions();
      },
      expect: () => [
        (state) => expect(state.isLoadingTransactionsData, true),
        (state) => expect(state.isLoadingTransactionsData, false),
      ],
    );

    blocTest<HomeController, HomeStateModel>(
      'emits loading and success states for fetchStatementsData',
      build: () => homeController,
      act: (controller) async {
        when(mockRepository.fetchStatementsData()).thenAnswer((_) async => {});
        await controller.fetchStatements();
      },
      expect: () => [
        (state) => expect(state.isLoadingStatementsData, true),
        (state) => expect(state.isLoadingStatementsData, false),
      ],
    );

    tearDown(() {
      reset(mockRepository);
      homeController.close();
    });
  });
}
