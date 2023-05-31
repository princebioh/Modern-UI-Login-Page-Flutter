import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({
    super.key,
    required this.imageLocation,
  });
  final String imageLocation;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      color: Colors.white,
      height: 100,
      minWidth: 100,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child:  Image(
        image: AssetImage(imageLocation),
        height: 50,
      ),
    );
  }
}
