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
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return Dialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                      height: 150,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment(1.05, -1.20),
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                padding: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(14),
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Icon(Icons.close),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 16),
                                child: Text(
                                  'Choose Type',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 100,
                                    height: 50,
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Task',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                      style: TextButton.styleFrom(
                                        backgroundColor: Color(0xffd6b4fc),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    width: 100,
                                    height: 50,
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Goal',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      style: TextButton.styleFrom(
                                        backgroundColor: Color(0xffffd700),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      )),
                );
              });
        },
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
