import 'package:flutter/material.dart';

class SignInButton extends StatefulWidget {
  const SignInButton({
    super.key,
  });

  @override
  State<SignInButton> createState() => _SignInButtonState();
}

class _SignInButtonState extends State<SignInButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)),
      color: Colors.black,
      onPressed: () {},
      minWidth: 400,
      height: 75,
      child: const Text(
        "Sign In",
        style: TextStyle(
          
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
