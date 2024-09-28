
import 'package:awe_project/Components/dashboard.dart';
import 'package:awe_project/Components/helper_class.dart';
import 'package:awe_project/globals/my_colors.dart';
import 'package:awe_project/globals/navbar.dart';
import 'package:flutter/material.dart';
class DashBoardScreeen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
        desktop: Scaffold(
          body: Container(
            child: SingleChildScrollView(
              child: Stack(
                children: [
                 Column(
                   children: [
                     Navbar(),
                     Dashboard(),
                   ],
                 )
                ],
              ),
            ),
          ),
        ),
        tablet: Scaffold(
          body: Container(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[

                  Navbar(),
                  Dashboard(),
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
        bgColor: bgColor);
  }
}