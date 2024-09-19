
import 'package:awe_project/Components/dashboard.dart';
import 'package:awe_project/Screens/practice_screen.dart';
import 'package:awe_project/globals/my_colors.dart';
import 'package:awe_project/globals/navbar.dart';
import 'package:flutter/material.dart';
class DashBoardScreeen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Container(
        decoration: BoxDecoration(
          // gradient: LinearGradient(
          //     begin: Alignment.centerLeft,
          //     end: Alignment.centerRight,
          //     colors: [
          //       Color.fromRGBO(195, 20, 50, 1.0),
          //       Color.fromRGBO(36, 11, 54, 1.0)
          //     ]),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Navbar(),
              Dashboard(),
            ],
          ),
        ),
      ),
    );
  }
}