import 'package:flutter/material.dart';
Widget myTextField({
  TextInputType? keyboardType,
  String? labelText,
  IconData? icon,
}) {
  return TextFormField(
    keyboardType: keyboardType,
    cursorColor: const Color(0xFFF8FE11),
    style: const TextStyle(
      color: Colors.white,
    ),
    decoration: InputDecoration(
      labelText: labelText,
      labelStyle: const TextStyle(
        color: Color(0xFF808696),
      ),
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xFFF8FE11),
        ),
      ),
      suffixIcon: icon != null
          ? IconButton(
              icon: Icon(
                icon,
                color: const Color(0xFF808696),
              ),
              onPressed: () {},
            )
          : null,
    ),
  );
}