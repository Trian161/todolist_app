import 'package:flutter/material.dart';
import 'package:todolist_app/components/custom_app_bar.dart';
import 'package:todolist_app/components/custom_bottom_navbar.dart';
import 'package:todolist_app/components/goal_container.dart';
import 'package:todolist_app/components/searchbar.dart';
import 'package:todolist_app/components/task_container.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        margin: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            SearchBarWidget(),
            GoalContainer(),
            Expanded(child: TaskContainer()),
          ],
        ),
      ),
    );
  }
}
