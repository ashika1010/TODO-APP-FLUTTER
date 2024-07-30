import 'package:flutter/material.dart';

class MyButton extends StatelessWidget{
  final String text;
  final onPressed;
   MyButton({
    super.key,
    required this.text,
    required this.onPressed,
    });

   @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
       color: Color.fromARGB(255, 45, 206, 212),
      child:Text(text) ,
     );
}
}