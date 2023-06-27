import 'package:flutter/material.dart';
import 'package:todo_app/todo/todo.dart';
import 'package:todo_app/utils/utils.dart';

class TodoMenu extends StatelessWidget {
  const TodoMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(defaultPadding),
          children: [
            sizedBoxMedium,
            Text(
              "Sample App",
              style: theme.textTheme.titleMedium,
            ),
            sizedBoxMedium,
            Button(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (conetext) => TaskList(),
                  ),
                );
              },
              leading: const Icon(Icons.computer),
              title: const Text("Tasks"),
              subtitle: const Text("6 Tasks"),
            ),
          ],
        ),
      ),
    );
  }
}
