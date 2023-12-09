import 'package:flutter/material.dart';
import 'package:todaydo_app/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import '/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Here we can use the Consumer widget in the provider package
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.tasks.length, //instead of widget.task
          itemBuilder: (context, index) {
            return TaskTile(
              isChecked: taskData.tasks[index].isDone, //instead of widget.task
              taskTitle: taskData.tasks[index].name, //instead of widget.task
              checkboxChange: (newValue) {
                taskData.updateTask(taskData.tasks[index]);

                // setState(() {
                //   widget.tasks[index].doneChange();
                // });
              },
              ListTileDelete: () {
                taskData.deleteTask(taskData.tasks[index]);
              },
            );
          },
        );
      },
    );
  }
}
