

import 'package:hive/hive.dart';

class ToDoDatabase {
  List toDoList = [];

  // Load data from Hive box into `toDoList`
  void loadData() {
    toDoList = Hive.box('mybox').get("TODOLIST", defaultValue: []);
  }

  // Update Hive box with the current `toDoList`
  void updateDataBase() {
    Hive.box('mybox').put("TODOLIST", toDoList);
  }
}
