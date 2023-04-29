import 'package:crashcourse_1/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  myApp({super.key});

  var name = "kuch bhi";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      
    );
  }
}
