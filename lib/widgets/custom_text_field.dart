import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLines = 1});

  final String hint;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, right: 20, left: 16),
      child: TextField(
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: hint,
          enabledBorder: borderDecoration(),
          border: borderDecoration(),
          focusedBorder: borderDecoration(color: kPrimaryColor),
        ),
      ),
    );
  }

  OutlineInputBorder borderDecoration({dynamic color}) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color ?? Colors.white),
      borderRadius: BorderRadius.circular(16),
    );
  }
}
