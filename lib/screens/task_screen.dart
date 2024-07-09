import 'package:flutter/material.dart';
import 'package:todo_app/models/task_data.dart';
import '../widgets/task_list.dart';
import 'add_screen.dart';
import 'package:provider/provider.dart';

class TaskScreen extends StatefulWidget {
  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => AddTaskList(),
          );
        },
        backgroundColor: Colors.lightBlueAccent,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 60.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const CircleAvatar(
                  radius: 35.0,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.list,
                    color: Colors.lightBlueAccent,
                    size: 35.0,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  'Todoey',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none),
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskCount} Tasks',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: TaskList(),
            ),
          ),
        ],
      ),
    );
  }
}

// class task_screen extends StatelessWidget {
//   const task_screen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.lightBlueAccent,
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           showModalBottomSheet(
//             context: context,
//             builder: (context) => AddTaskList(),
//           );
//         },
//         backgroundColor: Colors.lightBlueAccent,
//         child: const Icon(
//           Icons.add,
//           color: Colors.white,
//         ),
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Container(
//             padding: const EdgeInsets.only(
//                 top: 60.0, left: 30.0, right: 30.0, bottom: 60.0),
//             child: const Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 CircleAvatar(
//                   radius: 35.0,
//                   backgroundColor: Colors.white,
//                   child: Icon(
//                     Icons.list,
//                     color: Colors.lightBlueAccent,
//                     size: 35.0,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 10.0,
//                 ),
//                 Text(
//                   'Todoey',
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 50.0,
//                       fontWeight: FontWeight.bold,
//                       decoration: TextDecoration.none),
//                 ),
//                 Text(
//                   '12 Tasks',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 20.0,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: Container(
//               padding: const EdgeInsets.symmetric(horizontal: 20.0),
//               decoration: const BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(30.0),
//                   topRight: Radius.circular(30.0),
//                 ),
//               ),
//               child: TaskList(),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
