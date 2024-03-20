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
              margin: const EdgeInsets.symmetric(horizontal: 50),
              height: 40,
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
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  decoration: const BoxDecoration(
                      color: Color(0xffd6b4fc),
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(30))),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: TabBarView(
                      children: [
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Today Task',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  Image.asset('lib/images/Slider.png')
                                ],
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Text(
                                'You don\'t \nhave a \ntask today',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Tomorrow Task',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  Image.asset('lib/images/Slider.png')
                                ],
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Text(
                                'You don\'t \nhave a \ntask tomorrow',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
