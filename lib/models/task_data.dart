import 'package:flutter/material.dart';
import 'package:todo_app/models/Task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(tasktitle: "Buy the milk"),
    Task(tasktitle: "Buy the Juice"),
    Task(tasktitle: "Buy the mobile"),
  ];

  int get taskCount {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(String newtasktitle) {
    final task = Task(tasktitle: newtasktitle);
    _tasks.add(task);

    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
