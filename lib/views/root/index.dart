import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopify_mobile/core/routes/constants.dart';

class Root extends StatefulWidget {
  @override
  _RootState createState() => _RootState();
}

class _RootState extends State<Root> {
  @override
  void initState() {
    super.initState();
    _chekSesion();
  }

  _chekSesion() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));

    Future.delayed(
      Duration(milliseconds: 100),
      () => Navigator.pushNamedAndRemoveUntil(
          context, mainNavigation, (route) => false),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white);
  }
}
