import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:just_to_do/constants.dart';
import 'package:just_to_do/models/task_data.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
    late TextEditingController name=TextEditingController();
    late TextEditingController desc=TextEditingController();

    return Container(
      padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
      color: Color(0xff757575),
      //decoration: kContainerDecoration,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: kContainerDecoration,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w500),
            ),
            TextField(
              controller: name,
              decoration: InputDecoration(hintText: 'Name'),
              autofocus: true,
              textAlign: TextAlign.center,
              cursorColor: Colors.lightBlueAccent,
              onChanged: (value) {
                name.text = value;
              },
            ),
            TextField(
              controller: desc,
              maxLines: 3,
              decoration: InputDecoration(hintText: 'Description'),
              autofocus: true,
              textAlign: TextAlign.center,
              cursorColor: Colors.lightBlueAccent,
              onChanged: (value) {
                desc.text = value;
              },
            ),
            ElevatedButton(
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(name.text,desc.text);
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent),
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                )),
                SizedBox(
                  height: 20,
                )
                
          ],
        ),
      ),
    );
  }
}
