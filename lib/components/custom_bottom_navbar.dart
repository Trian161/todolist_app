import 'package:flutter/material.dart';
import 'package:todolist_app/pages/home.dart';
import 'package:todolist_app/pages/task.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({super.key});

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  PageController _pageController = PageController(initialPage: 0);

  void _onTapped(index) {
    setState(() {
      _pageController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: PageView(
        controller: _pageController,
        onPageChanged: (int) {
          print('Page changes to index $int');
        },
        children: [
          Home(),
          Task(),
        ],
      ),
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
      bottomNavigationBar: BottomAppBar(
        height: kBottomNavigationBarHeight * 1.1,
        color: Color(0xffffd700),
        elevation: 0,
        shape: CircularNotchedRectangle(),
        notchMargin: 7,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                _onTapped(0);
              },
              icon: Icon(Icons.home),
            ),
            IconButton(
              onPressed: () {
                _onTapped(1);
              },
              icon: Icon(Icons.task),
            ),
            const IconButton(
              onPressed: null,
              icon: Icon(null),
            ),
            IconButton(
              onPressed: () {
                _onTapped(2);
              },
              icon: Icon(Icons.calendar_month_rounded),
            ),
            IconButton(
              onPressed: () {
                _onTapped(3);
              },
              icon: Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}
