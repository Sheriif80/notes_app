import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/color_item.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  final List<Color> colors = const [
    Color(0xff042601),
    Color(0xffFDFFFC),
    Color(0xff2EC4B6),
    Color(0xffE71D36),
    Color(0xffFF9F1C),
    Color(0xffD5BF86),
    Color(0xff3F0D12),
    Color(0xffE1EFE6),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 28 * 2,
      child: ListView.builder(
        scrollDirection: .horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              setState(() {});
            },
            child: ColorItem(
              isPicked: index == currentIndex,
              color: colors[index],
            ),
          );
        },
      ),
    );
  }
}
