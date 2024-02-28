import 'package:flutter/material.dart';
import 'package:todolist_app/pages/homepage.dart';

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
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
