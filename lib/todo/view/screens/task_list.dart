import 'package:flutter/material.dart';
import 'package:todo_app/todo/todo.dart';
import 'package:todo_app/utils/utils.dart';

class TaskList extends StatelessWidget {
  TaskList({super.key});

  final List<Map<String, dynamic>> list = const [
    {
      "title": "Title 1",
      "subtitle": "Subtitle 1",
    },
    {
      "title": "Title 2",
      "subtitle": "Subtitle 2",
    },
    {
      "title": "Title 3",
      "subtitle": "Subtitle 3",
    },
    {
      "title": "Title 4",
      "subtitle": "Subtitle 4",
    },
    {
      "title": "Title 5",
      "subtitle": "Subtitle 5",
    },
    {
      "title": "Title 6",
      "subtitle": "Subtitle 6",
    }
  ];

  final List<Map<String, dynamic>> listDetail = [
    {"name": "Task", "value": "Start working out"},
    {"name": "Type", "value": "Personal Project"},
    {"name": "Priority", "value": "Nice to have"},
    {"name": "Timeframe", "value": "Week"},
    {
      "name": "Description",
      "value":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
    },
  ];

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            Button(
              color: Colors.transparent,
              title: Text(
                "Tasks",
                style: textTheme.textTheme.titleMedium,
              ),
              subtitle: const Text("6 Tasks"),
              trailing: CircleIcon(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddTask(),
                    ),
                  );
                },
                icons: Icons.add,
              ),
            ),
            sizedBoxMedium,
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: list.length,
              itemBuilder: (context, item) {
                return Button(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TaskDetail(list: listDetail),
                      ),
                    );
                  },
                  title: Text(list[item]["title"]),
                  subtitle: Text(list[item]["subtitle"]),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
