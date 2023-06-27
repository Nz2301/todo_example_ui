import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_app/theme/theme.dart';
import 'package:todo_app/todo/todo.dart';
import 'package:todo_app/utils/utils.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: statusBarColor,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: TodoThemeData.themeData,
      debugShowCheckedModeBanner: false,
      home: const TodoMenu(),
    );
  }
}
