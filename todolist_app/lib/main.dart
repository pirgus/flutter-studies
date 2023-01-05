import 'package:flutter/material.dart';
import 'package:todolist_app/pages/todo_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To Do All',
      home: ToDoPage(),
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
    );
  }
}
