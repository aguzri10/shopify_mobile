import 'package:flutter/material.dart';
import 'package:shopify_mobile/styles/asset.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: 114),
                Image.asset(
                  iconApp,
                  width: 72,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
