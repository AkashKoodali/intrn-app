import 'package:flutter/material.dart';

class GreyContainer extends StatelessWidget {
  const GreyContainer({
    Key? key,
    required this.screenHigh,
    required this.screenWidth,
  }) : super(key: key);

  final double screenHigh;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHigh,
      width: screenWidth,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.topRight,
          colors: [
            Colors.grey.withOpacity(1),
            Colors.grey.withOpacity(0.9),
          ],
        ),
      ),
    );
  }
}
