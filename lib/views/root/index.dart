import 'package:flutter/material.dart';
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
    Future.delayed(
      Duration(milliseconds: 100),
      () => Navigator.pushNamedAndRemoveUntil(context, login, (route) => false),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white);
  }
}
