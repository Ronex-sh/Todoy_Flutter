import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoy_provider/models/task.dart';

class TaskDate extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: 'dart'),
    Task(name: 'php'),
    Task(name: 'php2'),
  ];


void romveItem(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
  // void romveItem(int index) {
  //   _tasks.removeAt(index);
  //   notifyListeners();
  // }

  // List<Task> get tasks {
  //   return _tasks;
  // }
//UnmodifiableListView: listغير قابلة للتعديل
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
    //notifyListeners();
  }

  void addTask(String value) {
    _tasks.add(Task(name: value));
    //notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

//  void updateTask(int index) {
//     _tasks[index].toggleDone();
//     notifyListeners();
// }

  notifyListeners();
}
