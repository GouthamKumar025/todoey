class Task {
  final String tasktitle;
  bool isDone;

  Task({required this.tasktitle, this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }
}
