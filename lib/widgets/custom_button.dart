import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: kPrimaryColor,
      ),
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: const Center(
        child: Text(
          'Add Note',
          style: TextStyle(fontSize: 18, fontWeight: .bold),
        ),
      ),
    );
  }
}
