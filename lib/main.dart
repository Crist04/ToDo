import 'package:flutter/material.dart';
import 'package:just_to_do/models/task_data.dart';
import 'package:just_to_do/screens/task.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) =>
        TaskData(),
      
      child: MaterialApp(
    
        home:TasksScreen(),
      ),
    );
  }
}



