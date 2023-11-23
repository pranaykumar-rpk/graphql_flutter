import 'package:flutter/material.dart';
import 'package:graphql_example/global/common_shimmer.dart';

class HomeLoading extends StatelessWidget {
  const HomeLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: CommonShimmer(),
            ),
            SizedBox(height: 30),
            SizedBox(
              height: 300,
              child: CommonShimmer(),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 500,
              child: CommonShimmer(),
            ),
          ],
        ),
      ),
    );
  }
}
