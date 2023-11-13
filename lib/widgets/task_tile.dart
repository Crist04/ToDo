import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  late final bool? isChecked;
  late final String taskTitle;
  late final String taskDesc;
  late final Function checkBoxCallback;
  late final Function longPressCallBack;
  TasksTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkBoxCallback,
      required this.longPressCallBack,
      required this.taskDesc});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () => longPressCallBack(),
      title: Text(
        taskTitle,
        style: TextStyle(
            fontSize: 20,
            decoration: isChecked! ? TextDecoration.lineThrough : null),
      ),
      subtitle: Text(
        taskDesc,
        style: TextStyle(
            
            decoration: isChecked! ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (value) {
          checkBoxCallback(value);
        },
      ),
    );
  }
}
