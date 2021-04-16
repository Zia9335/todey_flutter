import 'package:flutter/material.dart';
import 'task_list_tiles.dart';
import 'package:todey_flutter/models/task.dart';

class TaskList extends StatefulWidget {
  TaskList(this.task);
  final List<Task> task;
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override

  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskListTiles(
          isChecked: widget.task[index].isDone,
          Name: widget.task[index].name,
          checkBoxCallBack: (value) {
            setState(() {
              widget.task[index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.task.length,
    );
  }
}
