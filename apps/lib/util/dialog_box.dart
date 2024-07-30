import 'package:apps/util/my_button.dart';
import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget{
  final controller;
final  onSave;
final onCancel;

 DialogBox({
    super.key,
  required this.controller,
  required this.onSave,
  required this.onCancel,
  }
  );

  @override
Widget build(BuildContext context){
  return AlertDialog(
    backgroundColor: Color.fromARGB(255, 153, 223, 237),
    content:Container(
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        TextField(
          controller: controller,
          decoration: InputDecoration(border: OutlineInputBorder(),
          hintText: "Add a new task",
          
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MyButton(
              //save button
            text: "Save", onPressed: onSave),
              //cancel button
              const SizedBox(width: 10),
              
               MyButton(
              
            text: "cancel", onPressed: onCancel)
              

          ],
        )
        ],
        ),
        )
  );
}
}