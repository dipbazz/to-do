import 'package:hive_flutter/hive_flutter.dart';

class TodoDatabase {
  List todoList = [];

  final _todoBox = Hive.box("todoBox");

  void createInitialData() {
    todoList = [
      ["make totorial", false],
      ["watch totorial", false],
    ];
  }

  void loadData() {
    todoList = _todoBox.get("TODOLIST");
  }

  void upateData() {
    _todoBox.put("TODOLIST", todoList);
  }
}
