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
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          elevation: 0,
          textTheme: TextTheme(
            headline6: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          color: Colors.white,
          brightness: Brightness.light,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          isDense: true,
          fillColor: Colors.transparent,
          contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: grayscale5),
            borderRadius: BorderRadius.circular(4),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: grayscale5),
            borderRadius: BorderRadius.circular(4),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primaryColorNormal),
            borderRadius: BorderRadius.circular(4),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: colorRed1),
            borderRadius: BorderRadius.circular(4),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: colorRed1),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ),
      onGenerateRoute: router.Router.generateRoute,
    );
  }
}
