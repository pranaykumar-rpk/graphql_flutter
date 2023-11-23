import 'package:graphql_example/global/api_service.dart';

class HomeRepository {
  Future<Map<String, dynamic>?>? fetchHomeData() async {
    return await GraphQLService.fetchHomeData();
  }

  Future<Map<String, dynamic>?>? fetchAccountsData() async {
    return await GraphQLService.fetchAccountsData();
  }

  Future<Map<String, dynamic>?>? fetchTransactionsData() async {
    return await GraphQLService.fetchTrasactionsData();
  }

  Future<Map<String, dynamic>?>? fetchStatementsData() async {
    return await GraphQLService.fetchStatementsData();
  }

  Future<Map<String, dynamic>> fetchContactsData() async {
    return await GraphQLService.fetchContactsData();
  }
}
