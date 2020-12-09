import "package:flutter/material.dart";
import 'package:provider/provider.dart';
//import 'package:todoy_provider/models/task.dart';
import 'package:todoy_provider/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskDate>(
      builder: (context, taskDate, child) {
        return ListView.builder(
          itemBuilder: (_, index) {
            return TaskTile(
              // index: index,
              deleteItem: () {
                taskDate.romveItem(taskDate.tasks[index]);
              },
              taskTitle: taskDate.tasks[index].name,
              checkChange: taskDate.tasks[index].isDone,
              onchange: (checkChange) {
                // taskDate.updateTask(index);
                taskDate.updateTask(taskDate.tasks[index]);
              },
            );
          },
          itemCount: taskDate.taskCount,
        );
      },
    );
  }
}

class TaskTile extends StatelessWidget {
  final bool checkChange;
  final String taskTitle;
  // final int index;
  final Function deleteItem; //callback
  final Function onchange; //callback
  TaskTile({this.deleteItem, this.checkChange, this.taskTitle, this.onchange});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: deleteItem,
      //  () {

      //  Provider.of<TaskDate>(context, listen: false).romveItem(index);
      // },
      title: Text(
        '$taskTitle',
        style: TextStyle(
            decoration: checkChange ? TextDecoration.underline : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.redAccent,
        value: checkChange,
        onChanged: onchange,
      ),
    );
  }
}

// class TasksList extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {

//   return ListView.builder(
//       itemBuilder: (_, index) {
//         return TaskTile(
//           taskTitle: Provider.of<TaskDate>(context).tasks[index].name,
//           checkChange:Provider.of<TaskDate>(context).tasks[index].isDone,
//           onchange: (checkChange) {
//             // setState(() {
//             //  Provider.of<TaskDate>(context).tasks[index].toggleDone();
//             // });
//           },
//         );
//       },
//       itemCount:Provider.of<TaskDate>(context). tasks.length,
//     );
//   }
// }

/////
// import "package:flutter/material.dart";
// import 'package:todoy_provider/models/task.dart';

// class TasksList extends StatefulWidget {
//   TasksList(this.tasks);
//  final List<Task> tasks;
//   @override
//   _TasksListState createState() => _TasksListState();
// }

// class _TasksListState extends State<TasksList> {
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemBuilder: (_, index) {
//         return TaskTile(
//           taskTitle: widget.tasks[index].name,
//           checkChange:widget.tasks[index].isDone,
//           onchange: (checkChange) {
//             setState(() {
//              widget.tasks[index].toggleDone();
//             });
//           },
//         );
//       },
//       itemCount:widget. tasks.length,
//     );
//   }
// }

// class TaskTile extends StatelessWidget {
//   final bool checkChange;
//   final String taskTitle;
//   final Function onchange;//callback
//   TaskTile({this.checkChange, this.taskTitle, this.onchange});

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text(
//         '$taskTitle',
//         style: TextStyle(
//             decoration: checkChange ? TextDecoration.underline : null),
//       ),
//       trailing: Checkbox(
//         activeColor: Colors.red,
//         value: checkChange,
//         onChanged: onchange,
//       ),
//     );
//   }
// }
