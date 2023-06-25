import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_ui_page/pages/dashboard.dart';
import 'package:login_ui_page/pages/login_page.dart';

import '../widgets/dialogs.dart';
import 'login_signup.dart';

// Page to Display Login/Register or Dashboard

class AuthWrapperPage extends StatefulWidget {
  const AuthWrapperPage({super.key});

  @override
  State<AuthWrapperPage> createState() => _AuthWrapperPageState();
}

class _AuthWrapperPageState extends State<AuthWrapperPage> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        // User Logged In
        if (snapshot.hasData) {
          return const DashBoard();
        }
        // User Logged Out
        else {
          return const ShowLoginOrSignup();
        }
      },
    );
  }
}
