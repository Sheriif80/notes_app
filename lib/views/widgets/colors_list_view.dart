import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/color_item.dart';

class ColorsListView extends StatelessWidget {
  const ColorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25 * 2,
      child: ListView.builder(
        scrollDirection: .horizontal,
        itemCount: 8,
        itemBuilder: (context, index) {
          return const ColorItem();
        },
      ),
    );
  }
}
