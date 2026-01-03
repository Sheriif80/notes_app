import 'package:flutter/material.dart';

class CustomAppBarIcon extends StatelessWidget {
  const CustomAppBarIcon({super.key, required this.icon, this.onTapForIcon});
  final IconData icon;
  final void Function()? onTapForIcon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapForIcon,
      child: Container(
        height: 42,
        width: 42,
        decoration: BoxDecoration(
          color: Colors.white12,
          borderRadius: BorderRadius.circular(12),
        ),
        margin: const EdgeInsets.only(left: 8),
        child: Icon(icon, size: 32, color: Colors.white),
      ),
    );
  }
}
