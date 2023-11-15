import 'package:flutter/material.dart';
import 'package:todo_list/config/config.dart';
import 'package:todo_list/screens/screens.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: const HomeScreen(),
    );
  }
}
