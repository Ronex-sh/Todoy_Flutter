
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoy_provider/Widgets/List_tile.dart';
import 'package:todoy_provider/models/task_data.dart';

import 'add_task_screen.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(

        onPressed: () => showModalBottomSheet(

            context: context,
            builder: (contex) => SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: AddTaskScreen(),
                  ),
                ),
            isScrollControlled: true),
            child: Icon(Icons.add,),
            backgroundColor: Colors.redAccent,
      ),
      backgroundColor: Colors.red[400],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60, left: 24, right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.list,
                    color: Colors.redAccent,
                    size: 36,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'ToDo',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                 "${Provider.of<TaskDate>(context,).taskCount}",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 7.8, vertical: 30),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              
              child: TasksList(),
            ),
          )
        ],
      ),
    );
  }
}




//////
// import 'package:flutter/material.dart';
// import 'package:todoy_provider/Widgets/List_tile.dart';
// import 'package:todoy_provider/models/task.dart';

// import 'add_task_screen.dart';

// class TaskScreen extends StatefulWidget {
//   @override
//   _TaskScreenState createState() => _TaskScreenState();
// }

// class _TaskScreenState extends State<TaskScreen> {
//   final List<Task> tasks = [
//     Task(name: 'dart'),
//     Task(name: 'php'),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => showModalBottomSheet(
//             context: context,
//             builder: (contex) => SingleChildScrollView(
//                   child: Container(
//                     padding: EdgeInsets.only(
//                         bottom: MediaQuery.of(context).viewInsets.bottom),
//                     child: AddTaskScreen((reseveTaskCallback) {
//                       setState(() {
//                         tasks.add(Task(name: reseveTaskCallback));
//                       });
//                       Navigator.pop(context);
//                     }),
//                   ),
//                 ),
//             isScrollControlled: true),
//       ),
//       backgroundColor: Colors.red[400],
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             padding: EdgeInsets.only(top: 60, left: 24, right: 24),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 CircleAvatar(
//                   radius: 30,
//                   backgroundColor: Colors.white,
//                   child: Icon(
//                     Icons.list,
//                     color: Colors.redAccent,
//                     size: 36,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                   'ToDo',
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 30,
//                       fontWeight: FontWeight.bold),
//                 ),
//                 Text(
//                   '${tasks.length} tasks',
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 16,
//                       fontWeight: FontWeight.w300),
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: Container(
//               padding: EdgeInsets.symmetric(horizontal: 7.8, vertical: 30),
//               decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(25),
//                       topRight: Radius.circular(25))),
//               child: TasksList(tasks),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
