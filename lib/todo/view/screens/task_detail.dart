import 'package:flutter/material.dart';
import 'package:todo_app/todo/todo.dart';
import 'package:todo_app/utils/utils.dart';

class TaskDetail extends StatelessWidget {
  const TaskDetail({
    super.key,
    required this.list,
  });
  final List<Map<String, dynamic>> list;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Button(
              isTitle: true,
              title: Text(
                "Task Preview",
                style: textTheme.titleMedium,
              ),
              color: Colors.transparent,
              trailing: CircleIcon(
                icons: Icons.delete_outline,
                backgroundColor: titleTextColor.withOpacity(0.1),
                textColor: titleTextColor,
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            sizedBoxMedium,
            ListView.builder(
              shrinkWrap: true,
              itemCount: list.length,
              itemBuilder: (context, item) {
                return TextInput(
                  lablelText: list[item]["name"],
                  readOnly: true,
                  hintText: list[item]["value"],
                  filled: false,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
