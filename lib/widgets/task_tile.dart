import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function onLongPressCallback;

  TaskTile({
    this.isChecked,
    this.taskTitle,
    this.checkboxCallback,
    this.onLongPressCallback,
  });

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: widget.onLongPressCallback,
      title: Text(
        widget.taskTitle,
        style: TextStyle(
          decoration: widget.isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: widget.isChecked,
        onChanged: widget.checkboxCallback,
      ),
    );
  }
}
