import 'dart:collection';

import 'package:flutter/material.dart';
import 'tasks.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    
  ];

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }
  int get taskCount {
    return _tasks.length;
  }
  void addTask(String newTaskTitle,String newTaskDesc) {
    final task = Task(name: newTaskTitle,desc: newTaskDesc);
    _tasks.add(task);
    notifyListeners();
  }

  void UpdateTask(Task task)
  {
    task.toggleDone();
    notifyListeners();
  }
  void DeleteTask(Task task)
  {
    _tasks.remove(task);
    notifyListeners();
  }
}
