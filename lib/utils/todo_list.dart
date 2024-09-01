import 'package:flutter/material.dart';

class ToDoList extends StatelessWidget {
  const ToDoList(
      {super.key,
      required this.taskName,
      required this.finished,
      this.onChanged});

  final String taskName;
  final bool finished;
  final Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
          bottom: 0,
          top: 20,
          left: 20,
          right: 20,
        ),
        child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(15)),
            child: Row(children: [
              Text(taskName,
                  style: const TextStyle(color: Colors.white, fontSize: 18)),
              Checkbox(
                  value: finished,
                  onChanged: onChanged,
                  checkColor: Colors.white)
            ])));
  }
}
