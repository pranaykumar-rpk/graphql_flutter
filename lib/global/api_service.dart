import 'package:graphql_example/global/helper_functions.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQLService {
  //for android emulator
  //final httpLink = HttpLink("http://10.0.2.2:4000/");
  //for real device if connected on same lan: change ip address to your pc's ip address
  static final httpLink = HttpLink("http://192.168.1.3:4000/");

  static Future<Map<String, dynamic>?> fetchHomeData() async {
    GraphQLClient client = GraphQLClient(link: httpLink, cache: GraphQLCache());
    print('Calling Queryresult fetch');
    QueryResult result =
        await client.query(QueryOptions(document: gql(getHomeQuery())));
    // print('Queryresult fetch done');
    // print(result.data.toString());
    Map<String, dynamic> resultMap = result.data!["home"];
    return resultMap;
  }

  static Future<Map<String, dynamic>?> fetchAccountsData() async {
    GraphQLClient client = GraphQLClient(link: httpLink, cache: GraphQLCache());
    // print('Calling Queryresult fetch');

    QueryResult result =
        await client.query(QueryOptions(document: gql(getAccountsQuery())));
    // print('Queryresult fetch done');
    // print(result.data.toString());
    //print data type of result.data[accounts]
    // print(result.data!["accounts"].runtimeType);
    return result.data;
  }

  static Future<Map<String, dynamic>?> fetchTrasactionsData() async {
    GraphQLClient client = GraphQLClient(link: httpLink, cache: GraphQLCache());
    // print('Calling Queryresult fetch');

    QueryResult result =
        await client.query(QueryOptions(document: gql(getTransactionsQuery())));
    // print('Queryresult fetch done');
    // print(result.data.toString());
    //print data type of result.data[accounts]
    // print(result.data!["transactions"].runtimeType);
    return result.data;
  }

  static Future<Map<String, dynamic>?>? fetchStatementsData() async {
    GraphQLClient client = GraphQLClient(link: httpLink, cache: GraphQLCache());
    print('Calling Queryresult fetch');

    QueryResult result =
        await client.query(QueryOptions(document: gql(getStatementsQuery())));
    // print('Queryresult fetch done');
    // print(result.data.toString());
    // print(result.data!["statements"].runtimeType);
    return result.data;
  }

  static Future<Map<String, dynamic>> fetchContactsData() async {
    GraphQLClient client = GraphQLClient(link: httpLink, cache: GraphQLCache());
    // print('Calling Queryresult fetch');

    QueryResult result =
        await client.query(QueryOptions(document: gql(getContactsQuery())));
    // print('Queryresult fetch done');
    if (result.hasException) {
      // print(result.exception.toString());
      return {
        "isSuccess": false,
        "message": result.exception.toString(),
        "data": null
      };
    } else {
      return {
        "isSuccess": true,
        "message": "Success",
        "data": result.data!["contacts"]
      };
    }
  }
}
