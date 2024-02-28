import 'package:flutter/material.dart';

class TaskContainer extends StatefulWidget {
  const TaskContainer({super.key});

  @override
  State<TaskContainer> createState() => _TaskContainerState();
}

class _TaskContainerState extends State<TaskContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              height: 45,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 232, 212, 255),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(25),
                ),
              ),
              child: const TabBar(
                // controller: TabController(length: 2, vsync: vsync),
                splashBorderRadius:
                    BorderRadius.vertical(top: Radius.circular(25)),
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                  color: Color(0xffd6b4fc),
                ),
                unselectedLabelColor: Colors.white,
                labelColor: Colors.black,
                tabs: [
                  Tab(
                    text: 'Today',
                  ),
                  Tab(
                    text: 'Tomorrow',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
