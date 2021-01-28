import 'package:flutter/material.dart';
import 'package:shopify_mobile/styles/colors.dart';
import 'package:shopify_mobile/core/routes/router.dart' as router;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: primaryColorNormal,
      ),
      onGenerateRoute: router.Router.generateRoute,
    );
  }
}