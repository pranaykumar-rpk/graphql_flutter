import 'package:graphql_flutter/graphql_flutter.dart';

class HomeRepository {
  final httpLink = HttpLink("http://10.0.2.2:4000/");

  Future<dynamic> fetchHomeData() async {
    GraphQLClient client = GraphQLClient(link: httpLink, cache: GraphQLCache());
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
"""))).then((value) {
      print("Response from server:");
      print(value.data.toString());
      Map<String, dynamic> result = value.data ?? {};
      return result['home'];
    }).catchError((e) {
      print(e.toString());
      return null;
    }).timeout(const Duration(seconds: 10));
  }
}
