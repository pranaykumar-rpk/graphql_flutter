import 'dart:convert';

import 'package:graphql_flutter/graphql_flutter.dart';

class HomeRepository {
  final httpLink = HttpLink("http://10.0.2.2:4000/");

  Future<Map<String, dynamic>?>? fetchHomeData() async {
    GraphQLClient client = GraphQLClient(link: httpLink, cache: GraphQLCache());
    print('Calling Queryresult fetch');

    QueryResult result =
        await client.query(QueryOptions(document: gql("""query getHome {
  home {
    name
    accountNumber
    balance
    currency
    address {
      streetName
      buildingNumber
      townName
      postCode
      country
    }
    recentTransactions {
      date
      description
      amount
      fromAccount
      toAccount
    }
    upcomingBills {
      date
      description
      amount
      fromAccount
      toAccount
    }
  }
}
""")));
    print('Queryresult fetch done');
    print(result.data.toString());
    Map<String, dynamic> resultMap = result.data!["home"];
    return resultMap;
  }
}
