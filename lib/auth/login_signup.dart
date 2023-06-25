import 'package:flutter/material.dart';
import 'package:login_ui_page/pages/login_page.dart';

import '../pages/sign_up_page.dart';

class ShowLoginOrSignup extends StatefulWidget {
  const ShowLoginOrSignup({super.key});

  @override
  State<ShowLoginOrSignup> createState() => _ShowLoginOrSignupState();
}

class _ShowLoginOrSignupState extends State<ShowLoginOrSignup> {
  bool changePage = false;
  void togglePage() {
    setState(() {
      changePage = !changePage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (changePage == true) {
      return SignUpPage(
        onTap: togglePage,
      );
    } else {
      return LoginPage(
        onTap: togglePage,
      );
    }
  }
}
