import 'package:flutter/material.dart';
import 'package:todo_app/todo/todo.dart';
import 'package:todo_app/utils/utils.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  TextEditingController taskController = TextEditingController();
  TextEditingController typeController = TextEditingController();
  TextEditingController prirorityController = TextEditingController();
  TextEditingController timeFrameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  bool isDisable = true;

  List<Map<String, dynamic>> list = [
    {"name": "Task", "value": ""},
    {"name": "Type", "value": ""},
    {"name": "Priority", "value": ""},
    {"name": "Timeframe", "value": ""},
    {"name": "Description", "value": ""},
  ];

  @override
  void dispose() {
    super.dispose();
    taskController.dispose();
    typeController.dispose();
    prirorityController.dispose();
    timeFrameController.dispose();
    descriptionController.dispose();
  }

  @override
  void initState() {
    super.initState();
    isDisabledButton();
  }

  void isDisabledButton() {
    if (taskController.value.text.trim().isEmpty ||
        typeController.value.text.trim().isEmpty ||
        prirorityController.value.text.trim().isEmpty ||
        timeFrameController.value.text.trim().isEmpty ||
        descriptionController.value.text.trim().isEmpty) {
      setState(() {
        isDisable = true;
      });
    } else {
      setState(() {
        isDisable = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "New Task",
                style: textTheme.textTheme.titleMedium,
              ),
              sizedBoxMedium,
              TextInput(
                lablelText: "Task",
                hintText: "Text",
                controller: taskController,
                onChanged: (value) {
                  isDisabledButton();
                  list[0]["value"] = value;
                },
              ),
              DropdownTextField(
                options: const [
                  "Work",
                  "Personal project",
                  "self",
                ],
                lablelText: "Type",
                onChanged: (value) {
                  if (value != null) {
                    typeController.text = value;
                    list[1]["value"] = value;
                  }
                  isDisabledButton();
                },
              ),
              DropdownTextField(
                options: const [
                  "Needs Done",
                  "Nice to have",
                  "Nice idea",
                ],
                lablelText: "Priority",
                onChanged: (value) {
                  if (value != null) {
                    prirorityController.text = value;
                    list[2]["value"] = value;
                  }
                  isDisabledButton();
                },
              ),
              DropdownTextField(
                options: const [
                  "None",
                  "Today",
                  "3 Days",
                  "Week",
                  "Fortnight",
                  "Month",
                  "90 Days",
                  "Year",
                ],
                lablelText: "Timeframe",
                onChanged: (value) {
                  if (value != null) {
                    timeFrameController.text = value;
                    list[3]["value"] = value;
                  }
                  isDisabledButton();
                },
              ),
              TextInput(
                lablelText: "Description",
                maxLine: 4,
                controller: descriptionController,
                onChanged: (value) {
                  isDisabledButton();
                  list[4]["value"] = value;
                },
              ),
              sizedBoxLarge,
              Button(
                isBtn: true,
                color: isDisable ? borderColor : titleTextColor,
                onTap: () {
                  if (isDisable) return;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TaskDetail(list: list),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
