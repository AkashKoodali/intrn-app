import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color? color;
  final Color? bordercolor;

  final double width;
  final double hight;
  final TextStyle? style;
  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
    this.color,
    required this.width,
    required this.hight,
    this.style,
    this.bordercolor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        side: BorderSide(
          width: 1.0,
          color: bordercolor!,
        ),
        minimumSize: Size(
          width,
          hight,
        ),
        backgroundColor: color,
      ),
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
