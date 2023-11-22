import 'dart:convert';

import 'package:get/get.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class HomeRepository {
  //for android emulator
  //final httpLink = HttpLink("http://10.0.2.2:4000/");
  //for real device if connected on same lan: change ip address to your pc's ip address
  final httpLink = HttpLink("http://192.168.1.3:4000/");

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

  fetchAccountsData() async {
    GraphQLClient client = GraphQLClient(link: httpLink, cache: GraphQLCache());
    print('Calling Queryresult fetch');

    QueryResult result =
        await client.query(QueryOptions(document: gql("""query getAccounts {
  accounts {
    id
    accountNumber
    accountType
    balance
    accountHolder
  }
}""")));
    print('Queryresult fetch done');
    print(result.data.toString());
    //print data type of result.data[accounts]
    print(result.data!["accounts"].runtimeType);

    // List<Map<String, dynamic>> resultMap =
    //     result.data!["accounts"] as List<Map<String, dynamic>>;

    return result.data;
  }

  fetchTransactionsData() async {
    GraphQLClient client = GraphQLClient(link: httpLink, cache: GraphQLCache());
    print('Calling Queryresult fetch');

    QueryResult result = await client.query(QueryOptions(document: gql("""
query getTransactions {
  transactions {
    date
    description
    amount
    fromAccount
    toAccount
  }
}
""")));
    print('Queryresult fetch done');
    print(result.data.toString());
    //print data type of result.data[accounts]
    print(result.data!["transactions"].runtimeType);
    // List<Map<String, dynamic>> resultMap =
    //     result.data!["accounts"] as List<Map<String, dynamic>>;
    return result.data;
  }

  fetchStatementsData() async {
    GraphQLClient client = GraphQLClient(link: httpLink, cache: GraphQLCache());
    print('Calling Queryresult fetch');

    QueryResult result = await client.query(QueryOptions(document: gql("""
query getStatements {
  statements {
    date
    description
    amount
  }
}

""")));
    // print('Queryresult fetch done');
    // print(result.data.toString());
    // print(result.data!["statements"].runtimeType);
    return result.data;
  }

  fetchContactsData() async {
    GraphQLClient client = GraphQLClient(link: httpLink, cache: GraphQLCache());
    print('Calling Queryresult fetch');

    QueryResult result = await client.query(QueryOptions(document: gql("""
query getContacts {
  contacts
}
""")));
    print('Queryresult fetch done');
    if (result.hasException) {
      print(result.exception.toString());
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
