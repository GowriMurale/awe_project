
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:awe_project/Screens/login_screen.dart';
import 'package:awe_project/globals/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


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

class DesktopNavbar extends StatefulWidget {
  @override
  State<DesktopNavbar> createState() => _DesktopNavbarState();
}

class _DesktopNavbarState extends State<DesktopNavbar> {
  Future<void> _confirmSignOut(BuildContext context) async {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('Sign Out'),
        content: Text('Are you sure you want to sign out?'),
        actions: <Widget>[
          TextButton(
            child: Text('No'),
            onPressed: () {
              Navigator.of(ctx).pop(); // Just close the dialog
            },
          ),
          TextButton(
            child: Text('Yes'),
            onPressed: () async {
              Navigator.of(ctx).pop(); // Close the dialog before signing out
              await _signOut(context); // Call the sign out method
            },
          ),
        ],
      ),
    );
  }

  Future<void> _signOut(BuildContext context) async {
    try {
      await Amplify.Auth.signOut();
      Get.offAll(() => LoginScreen()); // Redirect to login screen
    } on AuthException catch (e) {
      _showErrorDialog(context, e.message);
    }
  }

  void _showErrorDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('Error'),
        content: Text(message),
        actions: <Widget>[
          TextButton(
            child: Text('Okay'),
            onPressed: () {
              Navigator.of(ctx).pop();
            },
          ),
        ],
      ),
    );
  }

  bool _isEditing = false;

  void _toggleEdit() {
    setState(() {
      _isEditing = !_isEditing;
    });
  }
  // Function to open dialog
  void _showEditDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext ctx) {
        return Dialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Container(
            width: MediaQuery.of(ctx).size.width * 0.5,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text("Edit Personal Information"),
                // Other widgets and buttons
                SizedBox(height: 20),
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(ctx); // Close the dialog
                  },
                  child: Text('Save'),
                  color: Colors.yellow,
                  textColor: Colors.white,
                )
              ],
            ),
          ),
        );
      },
    );
  }



  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Card(
      elevation: 1,
      child: Container(
        height:size.height * 0.125,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topRight: Radius.circular(5),topLeft: Radius.circular(5),bottomLeft: Radius.zero,bottomRight: Radius.zero),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding:  EdgeInsets.only(left: size.width * 0.005,top: size.height * 0.003),
              child: Container(
                width: size.width * 0.130,
                  // height: size.height * 0.50,
                  decoration: BoxDecoration(
                  ),
                  child: Image.asset('assets/images/awe logo.png',)),
            ),
            Padding(
              padding:  EdgeInsets.only(
                 right: size.width * 0.038,top: size.height * 0.032),
              child: Column(
                children: [
                  GestureDetector(
                     onTap: _toggleEdit,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                          radius: 18,
                          child: Image.asset('assets/images/user_image.png'),
                        ),
                        // Positioned(
                        //   right: 0,
                        //   bottom: 0,
                        //   child: Icon(Icons.edit, size: 12, color: Colors.blue),
                        // ),
                      ],
                    ),
                  ),
                  if (_isEditing)
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Container(
                       width: 195,
                        height: 190,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: bgColor
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                         CircleAvatar(
                           radius: 15,
                           child: Image.asset('assets/images/user_image.png'),
                         ),
                            GestureDetector(
                                  onTap: (){
                                    print('button is pressed');
                                    _showEditDialog(context);
                                  },
                                child: Text('Personal Edit Info',style: TextStyle(fontSize: 12),)),
                            Divider(),
                            Row(
                              children: [
                                SizedBox(width: 30,),
                             Container(
                               width: 65,
                               height: 22,
                               decoration: BoxDecoration(
                                 color: Colors.grey.shade50,
                                 borderRadius: BorderRadius.circular(5),
                               ),
                               child: Text('mdm',style: TextStyle(fontSize: 13),),
                             ),
                                SizedBox(width: 20,),
                                Container(
                                  width: 65,
                                  height: 22,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade50,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Text('wong',style: TextStyle(fontSize: 13),),
                                ),
                              ],
                            ),
                            SizedBox(height: 8,),
                            Container(
                              width: 115,
                              height: 22,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade50,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text('2345684',style: TextStyle(fontSize: 13),),
                            ),
                            SizedBox(height: 6,),
                            Container(
                              width: 115,
                              height: 22,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade50,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text('adinin @gmail.com',style: TextStyle(fontSize: 13),),
                            ),
                           SizedBox(height: 12,),
                            Row(
                              children: [ SizedBox(width: 10,),
                               MaterialButton(
                                 onPressed: (){},
                                 minWidth: 20,
                                 height: 25,
                                 color: Colors.white,
                                 child: Text('Change Password',style: TextStyle(color: Colors.black,fontSize: 12),),
                               ),
                                SizedBox(width: 10,),
                                MaterialButton(
                                  onPressed: (){},
                                  minWidth: 20,
                                  height: 25,
                                  color:yellow,
                                  child: Text('Log out',style: TextStyle(color:Colors.black,fontSize: 12),),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  SizedBox(height: size.height * 0.015,),
                  // GestureDetector(
                  //   onTap: (){
                  //     _confirmSignOut(context);
                  //   },
                  //     child: Text('Log Out',style: TextStyle(color: black,fontFamily: 'Inter', fontSize: 14),)),
                ],
              ),
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
