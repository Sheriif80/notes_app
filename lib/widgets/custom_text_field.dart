import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Title',
          enabledBorder: borderDecoration(),
          border: borderDecoration(),

          focusedBorder: borderDecoration(color: KprimaryColor),
        ),
      ),
    );
  }

  OutlineInputBorder borderDecoration({color}) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color ?? Colors.white),
      borderRadius: BorderRadius.circular(16),
    );
  }
}
