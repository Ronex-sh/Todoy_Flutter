import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoy_provider/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String valueTask;
    return Container(
      color: Color(0xff757474),
      child: Container(
        padding: const EdgeInsets.only(top: 0, left: 20, right: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                valueTask = value;
              },
            ),
            FlatButton(
                onPressed: () {
                  
                  Provider.of<TaskDate>(context,listen: false).addTask(valueTask); 
                  Navigator.pop(context);

                  //  final task = Task(name: valueTask);
                  // Provider.of<TaskDate>(context, listen: false).tasks.add(task);
                },
                child: Text(
                  'Add',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                color: Colors.red[300])
          ],
        ),
      ),
    );
  }
}

////
// import 'package:flutter/material.dart';

// class AddTaskScreen extends StatelessWidget {
//   final Function addTaskCallback;
//   AddTaskScreen(this.addTaskCallback);
//   @override
//   Widget build(BuildContext context) {
//     String valueTask;
//     return Container(
//       color: Color(0xff757474),
//       child: Container(
//         padding: const EdgeInsets.only(top: 0, left: 20, right: 20),
//         decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(25), topRight: Radius.circular(25))),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text(
//               'Add Task',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                   fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold),
//             ),
//             TextField(
//               autofocus: true,
//               textAlign: TextAlign.center,
//               onChanged: (value) {
//                 valueTask = value;
//               },
//             ),
//             FlatButton(
//                 onPressed: () {
//                   addTaskCallback(valueTask);//callback
//                 },
//                 child: Text(
//                   'Add',
//                   style: TextStyle(
//                       fontSize: 18,
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold),
//                 ),
//                 color: Colors.red[300])
//           ],
//         ),
//       ),
//     );
//   }
// }
