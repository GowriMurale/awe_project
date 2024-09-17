import 'package:awe_project/globals/my_colors.dart';
import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topRight: Radius.circular(5),topLeft: Radius.circular(5),bottomLeft: Radius.zero,bottomRight: Radius.zero),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 5,top: 5),
              child: Container(
                width: 190,
                  height: 90,
                  child: Image.asset('assets/images/logo (2).png')),
            ),
            Row(
              children: <Widget>[
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                 child: Column(
                   children: [
                     CircleAvatar(
                       radius: 20,
                       child: Image.asset('assets/images/user image.png'),
                     ),
                     SizedBox(height: 5,),
                     Text('Log Out',style: TextStyle(color: black,fontFamily: 'Inter', fontSize: 14),),
                   ],
                 ),
               )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  const MobileNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

      ],
    );
  }
}
