import 'package:flutter/material.dart';

class ImageButton extends StatelessWidget {
  const ImageButton({
    super.key,
    required this.imageLocation,
  });
  final String imageLocation;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      color: Colors.grey.shade200,
      height: 100,
      minWidth: 100,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Image(
        image: AssetImage(imageLocation),
        height: 50,
      ),
    );
  }
}
