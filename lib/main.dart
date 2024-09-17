import 'package:awe_project/Components/leave_review.dart';
import 'package:awe_project/Screens/apply_leave_screen.dart';
import 'package:awe_project/Screens/dashboard_screen.dart';
import 'package:awe_project/Screens/login_button.dart';
import 'package:awe_project/Screens/leave_history_screen.dart';
import 'package:awe_project/Screens/leave_review_screen.dart';
import 'package:awe_project/Screens/leave_view_screen.dart';
import 'package:awe_project/Screens/login_screen.dart';
import 'package:awe_project/Screens/practice_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'AWE Project',
      theme: ThemeData(),
      home: ApplyLeaveScreen(),
    );
  }
}



