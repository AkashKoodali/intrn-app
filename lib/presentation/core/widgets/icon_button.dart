import 'package:flutter/material.dart';

class IButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String icon;
  final String label;
  final Color? bordercolor;
  final Color textColor;
  final Color primary;
  const IButton({
    Key? key,
    required this.onPressed,
    required this.icon,
    required this.label,
    this.textColor= Colors.black, 
    required this.primary, 
    this.bordercolor = Colors.deepPurple,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        onPressed: onPressed,
        icon: Image.asset(icon, width: 20.0,height: 20,),
        label: Text(label,style: TextStyle(color: textColor),),
        style: OutlinedButton.styleFrom(
          minimumSize: const Size(145, 40),
          maximumSize: const Size(150, 50),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        side: BorderSide(
          width: 2.0,
          color: bordercolor!,
        ),
          backgroundColor: primary,
          padding: const EdgeInsets.all(5),
        ));
  }
}
