import 'package:flutter/material.dart';
import 'my_colors.dart';
class Navbar2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavbar2();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavbar2();
        } else {
          return MobileNavbar2();
        }
      },
    );
  }
}

class DesktopNavbar2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Card(
      elevation: 1,
      child: Container(
        height: size.height * 0.10,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(5),topLeft: Radius.circular(5),bottomLeft: Radius.zero,bottomRight: Radius.zero),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(width: size.width * 0.3,),
            Text('Apply Leave',style: TextStyle(fontFamily: 'Inter',fontSize: 20,fontWeight: FontWeight.bold,color: black),),

          ],
        ),
      ),
    );
  }
}

class MobileNavbar2 extends StatelessWidget {
  const MobileNavbar2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

      ],
    );
  }
}