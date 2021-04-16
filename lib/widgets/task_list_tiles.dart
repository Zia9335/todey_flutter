import 'package:flutter/material.dart';
import 'package:todey_flutter/models/task.dart';
class TaskListTiles extends StatelessWidget {
  @override
TaskListTiles({this.isChecked, this.Name,this.checkBoxCallBack});
  final bool isChecked;
  final String Name;
final Function checkBoxCallBack;
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        Name,
        style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing:Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: checkBoxCallBack,
      ),
    );
  }
}



