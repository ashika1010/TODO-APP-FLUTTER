import 'package:apps/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';


void main()async
 {
  //intialize the hive

await Hive.initFlutter();
await Hive.openBox("mybox");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
    
      home:const HomePage(),
      theme: ThemeData(primarySwatch: Colors.teal),
    );
  }
}
