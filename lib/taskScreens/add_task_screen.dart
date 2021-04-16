import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {

  AddTaskScreen(this.addTaskTile);
  final Function addTaskTile;
  @override
  String newTaskTitleName;
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff777777),
        child: Container(
          padding: EdgeInsets.all(30.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.lightBlueAccent,
                ),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                decoration: InputDecoration(hintText: 'Add Task'),
               onChanged: (text){
                  newTaskTitleName=text;
               },
              ),

              // ignore: deprecated_member_use
              FlatButton(
                onPressed: () {
                  addTaskTile(newTaskTitleName);
                },
                child: Text(
                  'Add',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
                color: Colors.lightBlueAccent,
              )
            ],
          ),
        ),
     // ),
    );
  }
}
