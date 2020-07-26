import 'package:flutter/material.dart';
import 'package:net/models/task_data.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0), topLeft: Radius.circular(20.0)),
        ),
        child: Container(
          padding: EdgeInsets.only(
            top: 20.0,
            left: 30.0,
            right: 30.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.lightBlueAccent,
                    fontWeight: FontWeight.bold),
              ),
              TextField(
                autofocus: true,
                decoration: InputDecoration(
                  hintText: 'Write your task here...',
                ),
                onChanged: (newText) {
                  newTaskTitle = newText;
                },
                onSubmitted: (newValue) {
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(newValue);
                  Navigator.pop(context);
                },
              ),
              SizedBox(
                height: 15.0,
              ),
              FlatButton(
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.lightBlueAccent,
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(newTaskTitle);
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
