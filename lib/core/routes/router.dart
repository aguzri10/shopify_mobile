

import 'package:flutter/material.dart';
import 'package:shopify_mobile/core/routes/constants.dart';
import 'package:shopify_mobile/views/auth/login_page.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case root:
      //   return MaterialPageRoute(builder: (_) => Root());
      case login:
        return MaterialPageRoute(builder: (_) => LoginPage());
      default:
        return null;
    }
  }   
}