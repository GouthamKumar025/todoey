import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';

class AddTaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String? newTasktitle;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              textAlign: TextAlign.center,
              'Add Task',
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontWeight: FontWeight.w500,
                fontSize: 35.0,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newValue) {
                newTasktitle = newValue;
              },
            ),
            const SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<TaskData>(context, listen: false).addTask(newTasktitle!);
                Navigator.pop(context);
              },
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent),
            ),
          ],
        ),
      ),
    );
  }
}
