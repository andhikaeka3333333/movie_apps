import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final double marginTop;
  final double marginLeft;
  final double marginRight;
  final Color enabledBorderColor;
  final Color focusedBorderColor;
  final Color labelColor;
  final String labelText;
  final bool obscureText;
  final void Function(String) onChanged;

  const MyTextField(
      {super.key,
      required this.marginTop,
      required this.marginLeft,
      required this.marginRight,
      required this.enabledBorderColor,
      required this.focusedBorderColor,
      required this.labelColor,
      required this.labelText,
      required this.obscureText,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(top: marginTop, left: marginLeft, right: marginRight),
      child: TextFormField(
        onChanged: onChanged,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: enabledBorderColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: focusedBorderColor),
          ),
          labelText: labelText,
          labelStyle: TextStyle(color: labelColor),
          border: OutlineInputBorder(),
        ),
        obscureText: obscureText,
      ),
    );
  }
}
