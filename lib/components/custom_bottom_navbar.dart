import 'package:flutter/material.dart';
import 'package:todolist_app/pages/home.dart';
import 'package:todolist_app/pages/task.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({super.key});

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  List<Widget> _pages = [
    Home(),
    Task(),
  ];
  int _selectedIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffffd700),
        shape: CircleBorder(),
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 50,
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color(0xffd6b4fc),
        ),
        child: BottomAppBar(
          height: kBottomNavigationBarHeight * 1.1,
          color: Color(0xffffd700),
          elevation: 0,
          shape: CircularNotchedRectangle(),
          notchMargin: 7,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.home),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.task),
                // padding: EdgeInsets.only(right: 30),
              ),
              const IconButton(
                onPressed: null,
                icon: Icon(null),
                // padding: EdgeInsets.only(right: 30),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.calendar_month_rounded),
                // padding: EdgeInsets.only(left: 30),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.person),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
