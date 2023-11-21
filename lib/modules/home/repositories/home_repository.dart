import 'package:graphql_flutter/graphql_flutter.dart';

class HomeRepository {
  final HttpLink httpLink = HttpLink(
    'http://localhost:4000/',
  );

  Future<dynamic> fetchData() async {
    GraphQLClient client =
        GraphQLClient(link: httpLink, cache: GraphQLCache(store: HiveStore()));
    print('Calling Queryresult fetch');
    QueryResult queryResult =
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
    print("Response from server:");
    print(queryResult.data.toString());
    Map<String, dynamic> result = queryResult.data ?? {};
    return result;
  }
}
