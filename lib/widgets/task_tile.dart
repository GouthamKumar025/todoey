import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String tasktitle;
  final Function(bool?) checkBoxcallback;
  final VoidCallback LongPresscallback;

  TaskTile(
      {required this.tasktitle,
      this.isChecked = false,
      required this.checkBoxcallback,
      required this.LongPresscallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: LongPresscallback,
      title: Text(
        tasktitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkBoxcallback,
      ),
    );
  }
}

// import 'package:flutter/material.dart';
//
// class TaskTile extends StatefulWidget {
//   @override
//   State<TaskTile> createState() => _TaskTileState();
// }
//
// class _TaskTileState extends State<TaskTile> {
//   bool isChecked = false;
//
//   void checkCallBack(bool? checkBoxState) {
//     setState(() {
//       isChecked = checkBoxState ?? false;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text(
//         'This is a task',
//         style: TextStyle(
//             decoration: isChecked ? TextDecoration.lineThrough : null),
//       ),
//       trailing: TaskCheckBox(
//         checkBoxState: isChecked,
//         toggleCheckBoxState: checkCallBack,
//       ),
//     );
//   }
// }
//
// class TaskCheckBox extends StatelessWidget {
//   final bool checkBoxState;
//   final Function(bool?) toggleCheckBoxState;
//
//   TaskCheckBox(
//       {required this.checkBoxState, required this.toggleCheckBoxState});
//
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       activeColor: Colors.lightBlueAccent,
//       value: checkBoxState,
//       onChanged: toggleCheckBoxState,
//     );
//   }
// }
