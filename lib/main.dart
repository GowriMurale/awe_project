import 'package:awe_project/Screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
//main file
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: LoginScreen(),
    );
  }
}

