import 'package:flutter/material.dart';

showErrorMessage({
  required String errorMessage,
  required BuildContext context,
}) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(errorMessage),
        backgroundColor: Colors.deepPurple,
      );
    },
  );
}

loadingCircle({required BuildContext context}) {
  return showDialog(
    context: context,
    builder: (context) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    },
  );
}
