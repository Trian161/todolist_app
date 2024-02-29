import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({super.key});

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
        style: TabStyle.react,
        items: [
          TabItem(icon: Icons.home),
          TabItem(icon: Icons.task),
          TabItem(icon: Icons.add),
          TabItem(icon: Icons.calendar_month),
          TabItem(icon: Icons.person),
        ],
        onTap: (int i) => print('click index=$i'));
  }
}
