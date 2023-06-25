import 'package:flutter/material.dart';
import 'package:login_ui_page/auth/auth.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("USER DASHBOARD"),
        actions: [
          IconButton(
            onPressed: () async {
              await Authenticate().signOut();
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: const Center(
        child: Text("Welcome to Dashboard"),
      ),
    );
  }
}
