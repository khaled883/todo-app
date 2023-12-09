//the task.dart file in the models folder is specifying how the task widget
//will look like as a data type
class Task {
  final String name;
  bool isDone;
  Task({required this.name, this.isDone = false});

  void doneChange() {
    isDone = !isDone;
  }
}
