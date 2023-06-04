import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("USER DASHBOARD"),
      ),
      body: const Center(
        child:  Text("Welcome to Dashboard"),
      ),
    );
  }
}
