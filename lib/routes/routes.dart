import 'package:flutter/material.dart';
import 'package:login_ui_page/pages/dashboard.dart';
import 'package:login_ui_page/pages/login_page.dart';

class RouteManager {
  static const String loginPage = '/';
  static const String dashBoard = '/dashboard';

  static Route<dynamic> routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case loginPage:
        return MaterialPageRoute(builder: (context) => LoginPage());
      case dashBoard:
        return MaterialPageRoute(builder: (context) => DashBoard());
      default:
        throw const FormatException("Page Not Found");
    }
  }
}
