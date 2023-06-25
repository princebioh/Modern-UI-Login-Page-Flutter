import 'package:firebase_auth/firebase_auth.dart';
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
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Center(
        child:
            Text("Lodded in as : ${FirebaseAuth.instance.currentUser?.email}"),
      ),
    );
  }
}
