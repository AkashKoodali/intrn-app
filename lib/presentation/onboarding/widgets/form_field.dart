import 'package:flutter/material.dart';

class HFormField extends StatelessWidget {
  const HFormField(
      {Key? key,
      this.obscureText = false,
      this.controller,
      this.validator,
      this.hintText,
      this.onChanged,
      this.textStyle})
      : super(key: key);
  final TextEditingController? controller;
  final bool obscureText;
  final String? Function(String?)? validator;
  final String? hintText;
  final TextStyle? textStyle;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: textStyle,
        border: InputBorder.none,
        
      ),
      
      validator: validator,
      onChanged: onChanged,
    );
  }
}
