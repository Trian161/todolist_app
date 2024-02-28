import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(65.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xffffd700),
      title: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Center(child: Text('To Do List')),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.settings),
        ),
      ],
    );
  }
}
