import 'package:flutter/material.dart';
import 'package:login_ui_page/auth/auth_display_page.dart';
import 'package:login_ui_page/pages/dashboard.dart';
import 'package:login_ui_page/pages/login_page.dart';
import 'package:login_ui_page/pages/sign_up_page.dart';

class RouteManager {
  static const String authPage = '/';
  static const String loginPage = '/login';
  static const String signupPage = '/signup';

  static Route<dynamic> routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case authPage:
        return MaterialPageRoute(builder: (context) => const AuthWrapperPage());
      case loginPage:
        return MaterialPageRoute(builder: (context) => const LoginPage());
      case signupPage:
        return MaterialPageRoute(builder: (context) => const SignUpPage());
      default:
        throw const FormatException("Page Not Found");
    }
  }
}
