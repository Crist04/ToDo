class Task{
  late String name;
  late String desc;
  late bool isDone = false;
  
  
  Task({required this.name,required this.desc});
  

  void toggleDone()
  {
    isDone= !isDone;
  }
}