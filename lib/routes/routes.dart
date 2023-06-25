import 'package:flutter/material.dart';
import 'package:login_ui_page/auth/auth_display_page.dart';
import 'package:login_ui_page/pages/dashboard.dart';

class RouteManager {
  static const String authPage = '/';
  static const String dashboard = '/dashboard';

  static Route<dynamic> routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case authPage:
        return MaterialPageRoute(builder: (context) => const AuthWrapperPage());
      case dashboard:
        return MaterialPageRoute(builder: (context) => const DashBoard());
      default:
        throw const FormatException("Page Not Found");
    }
  }
}
