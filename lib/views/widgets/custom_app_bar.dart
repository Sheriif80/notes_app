import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes_app/views/widgets/custom_app_bar_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.hint, required this.icon});
  final String hint;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          hint,
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Spacer(),
        CustomAppBarIcon(icon: icon),
      ],
    );
  }
}
