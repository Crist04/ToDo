import 'package:flutter/material.dart';
import 'package:just_to_do/models/task_data.dart';

import 'package:just_to_do/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      
      return ListView.builder(
        itemBuilder: (context, index) {
          final taskItem =taskData.tasks[index];
          return TasksTile(
              taskDesc: taskItem.desc,
              isChecked: taskItem.isDone,
              taskTitle: taskItem.name,
              checkBoxCallback: (bool checkBoxState) {
                taskData.UpdateTask(taskItem);
              },
              longPressCallBack: (){
                taskData.DeleteTask(taskItem);
              },);
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}
