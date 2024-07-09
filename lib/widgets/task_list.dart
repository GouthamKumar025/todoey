import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';
import 'package:todo_app/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskdata, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final task = taskdata.tasks[index];
          return TaskTile(
            tasktitle: task.tasktitle,
            isChecked: task.isDone,
            checkBoxcallback: (checkBoxState) {
              taskdata.updateTask(task);
            },
            LongPresscallback: () {
              taskdata.deleteTask(task);
            },
          );
        },
        itemCount: taskdata.taskCount,
      );
    });
  }
}
