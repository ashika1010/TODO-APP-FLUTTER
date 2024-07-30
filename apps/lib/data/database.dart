import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase{
  List toDolist=[];
  //reference the bix
  final _mybox=Hive.box("mybox");

  //run this method if opening first time ever
  void createIntialData(){
toDolist=[
  ["Do Your homework",false],
  ["Do Yoga",false],
];
  }

  //load data from the db
 void loadData(){
toDolist=_mybox.get("TODOLIST");
 }

 ///update the db
 void updateDatabase(){
  _mybox.put("TODOLIST", toDolist);
 }

}

