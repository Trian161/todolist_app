import 'package:flutter/material.dart';
import 'package:todolist_app/components/custom_bottom_navbar.dart';
import 'package:todolist_app/pages/home.dart';
import 'package:todolist_app/pages/task.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const CustomBottomBar(),
    );
  }
}
