// math_utils_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql_example/global/api_service.dart';
import 'package:mockito/mockito.dart';

class MockGraphqlService extends Mock implements GraphQLService {}

void main() {
  setUp(() {});

  test('Initial values are correct', () {
    //change the source(IP address) here when connected to different network
    expect(GraphQLService.source, "http://192.168.1.3:4000/");
  });

  test('Fetch Account', () async {
    final result = await GraphQLService.fetchAccountsData();

    expect(result!["accounts"].runtimeType, List<Object?>);
    expect(result["accounts"].length, equals(10));
  });
}
