import 'package:flutter/material.dart';

class ScaffoldImage extends StatelessWidget {
  const ScaffoldImage({
    Key? key,
    required this.screenHigh,
    required this.screenWidth,
  }) : super(key: key);

  final double screenHigh;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHigh,
      width: screenWidth,
      child: Image.asset(
        'assets/e.jpeg',
        fit: BoxFit.cover,
      ),
    );
  }
}