import 'package:awe_project/Components/apply_leave.dart';
import 'package:awe_project/Components/helper_class.dart';
import 'package:awe_project/globals/my_colors.dart';
import 'package:awe_project/globals/navbar2.dart';
import 'package:flutter/material.dart';
class ApplyLeaveScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
        desktop: Scaffold(
          backgroundColor: bgColor,
          body: Container(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Navbar2(),
                  ApplyLeave(),
                ],
              ),
            ),
          ),
        ),
        tablet: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Navbar2(),
                  ApplyLeave(),
                ],
              ),
            ),
          ),
        ),
        mobile: Column(
          children: [

          ],
        ),
        paddingWidth: size.width * 0.1,
        bgColor: Colors.white);
  }
}