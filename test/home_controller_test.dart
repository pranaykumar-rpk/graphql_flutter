import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql_example/modules/home/controllers/home_controller.dart';
import 'package:graphql_example/modules/home/models/home_model.dart';
import 'package:graphql_example/modules/home/models/home_state_model.dart';
import 'package:graphql_example/modules/home/repositories/home_repository.dart';
import 'package:mockito/mockito.dart';

class MockHomeRepository extends Mock implements HomeRepository {}

class MockHomeController extends MockCubit<HomeStateModel>
    implements HomeController {}

class MockHomeStateModel extends Mock implements HomeStateModel {}

void main() {
  group('HomeController', () {
    late HomeController homeController;
    late MockHomeRepository mockRepository;

    setUp(() {
      mockRepository = MockHomeRepository();
      homeController = HomeController();
      homeController.respository = mockRepository;
    });

    tearDown(() {
      reset(mockRepository);
      homeController.close();
    });

    test('Check Initial values are correct', () {
      expect(homeController.state.isLoading, equals(false));
      expect(homeController.state.isLoadingHomeData, equals(false));
      expect(homeController.state.isLoadingAccountsData, equals(false));
      expect(homeController.state.isLoadingTransactionsData, equals(false));
      expect(homeController.state.isLoadingStatementsData, equals(false));
      expect(homeController.state.homeData, equals(null));
      expect(homeController.state.accounts, equals([]));
      expect(homeController.state.transactions, equals([]));
      expect(homeController.state.statements, equals([]));
      expect(homeController.state.selectedIndex, equals(0));
    });

    blocTest<HomeController, HomeStateModel>(
      'Check Home feed API method',
      build: () => homeController,
      act: (controller) async {
        when(mockRepository.fetchHomeData()).thenAnswer((_) async => {});
        await controller.fetchData();
      },
      expect: () => [
        HomeStateModel(isLoadingHomeData: true),
        HomeStateModel(isLoadingHomeData: false),
        HomeStateModel(homeData: HomeModel()),
      ],
    );

    blocTest<HomeController, HomeStateModel>(
      'Check the account details API method',
      build: () => homeController,
      act: (controller) async {
        // when(mockRepository.fetchAccountsData()).thenAnswer((_) async => {});
        await controller.fetchAcoountDetails();
      },
      expect: () => [
        HomeStateModel(isLoadingAccountsData: true),
        HomeStateModel(isLoadingAccountsData: false),
      ],
    );

    blocTest<HomeController, HomeStateModel>(
      'Check the transaction API method',
      build: () => homeController,
      act: (controller) async {
        when(mockRepository.fetchTransactionsData())
            .thenAnswer((_) async => {});
        await controller.fetchTransactions();
      },
      expect: () => [
        HomeStateModel(isLoadingTransactionsData: true),
        HomeStateModel(isLoadingTransactionsData: false),
      ],
    );

    blocTest<HomeController, HomeStateModel>(
      'Check the statements API method',
      build: () => homeController,
      act: (controller) async {
        when(mockRepository.fetchStatementsData()).thenAnswer((_) async => {});
        await controller.fetchStatements();
      },
      expect: () => [
        HomeStateModel(isLoadingStatementsData: true),
        HomeStateModel(isLoadingStatementsData: false),
      ],
    );
  });
}
