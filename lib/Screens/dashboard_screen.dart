
import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:awe_project/Components/dashboard.dart';
import 'package:awe_project/Components/helper_class.dart';
import 'package:awe_project/Screens/signup_screen.dart';
import 'package:awe_project/globals/my_colors.dart';
import 'package:awe_project/globals/navbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intl/intl.dart';

import '../globals/navigation_bar.dart';
import '../models/CandidateApplicationForm.dart';
import 'apply_leave_screen.dart';
import 'login_screen.dart';
class DashBoardScreeen extends StatefulWidget {
  @override
  State<DashBoardScreeen> createState() => _DashBoardScreeenState();
}

class _DashBoardScreeenState extends State<DashBoardScreeen> {
  DateTime now = DateTime.now(); // Get the current date and time
  String formattedDate = DateFormat(' dd/MM/yyyy    HH:mm:ss').format(DateTime.now());

  final TextEditingController userIdController = TextEditingController();
  final box = GetStorage();
  Future<void> storeTempIdLocally() async {
    final box = GetStorage();
    box.write('tempId', "TEMP001");  // Hardcoded tempId
    print("TempId 'TEMP001' stored locally");
  }

  // Method to retrieve tempId from local storage
  String? getTempIdFromStorage() {
    final box = GetStorage();
    return box.read('tempId');  // Retrieve tempId from local storage
  }

  // Fetch candidate application data using the stored tempId
  Future<void> fetchCandidateApplicationData(BuildContext context) async {
    try {
      // Get the stored tempId (e.g., 'TEMP001')
      final box = GetStorage();
      String tempId = box.read('tempId') ?? '';  // Retrieve tempId from storage

      if (tempId.isEmpty) {
        _showErrorDialog(context, 'No tempId found in local storage.');
        return;
      }

      // Query the API to get candidate application details using tempId
      final request = ModelQueries.list(
        CandidateApplicationForm.classType,
        where: CandidateApplicationForm.TEMPID.eq(tempId), // Query using tempId
      );

      final response = await Amplify.API.query(request: request).response;

      if (response.errors.isNotEmpty) {
        print('Errors: ${response.errors}');
        _showErrorDialog(context, 'Failed to fetch application data.');
        return;
      }

      List<CandidateApplicationForm?> candidateApplications = response.data?.items ?? [];
      print(candidateApplications);

      if (candidateApplications.isNotEmpty && candidateApplications.first != null) {
        var candidate = candidateApplications.first;
        print(candidate);

        // Store candidate data locally for later use
        box.write('name', candidate?.name ?? 'N/A');
        box.write('email', candidate?.email ?? 'N/A');
        box.write('contactNo', candidate?.contactNo ?? 'N/A');

        print("Candidate Name: ${candidate?.name}");
        print("Candidate Email: ${candidate?.email}");
        print("Candidate Contact No: ${candidate?.contactNo}");
      } else {
        _showErrorDialog(context, 'No data found for the provided tempId.');
      }
    } catch (e) {
      print('Failed to fetch candidate data: $e');
      _showErrorDialog(context, 'An unexpected error occurred.');
    }
  }

  String name = 'N/A';
  String email = 'N/A';
  String contactNo = 'N/A';

  @override
  void initState(){
    super.initState();
    loadUserData();
  }

  void loadUserData() {
    setState(() {
      name = box.read('name') ?? 'N/A';
      email = box.read('email') ?? 'N/A';
      contactNo = box.read('contactNo') ?? 'N/A';
    });
  }


  Future<void> _confirmSignOut(BuildContext context) async {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('Log Out'),
        content: Text('Are you sure you want to Log out?'),
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

  void _showPopupMenu(BuildContext context) {
    showMenu(
      color: Colors.white,
      context: context,
      position: RelativeRect.fromLTRB(100, 70, 5, 300), // Position of the menu
      items: [
        PopupMenuItem<int>(
          value: 0,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 10,),
              Container(
                height: 70,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/user image.png'),
                  radius: 25,
                  child: Container(
                    width: 100, // Width of the button
                    height: 30, // Height of the button
                    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 13) ,
                    child: IconButton(
                        color: Colors.black,
                        iconSize: 15,
                        padding: EdgeInsets.all(20),
                        onPressed: () {
                          _showPopupMenu(context);
                        }, icon: Icon(Icons.photo_camera_outlined,)
                    ),
                  ),
                ),
              ),

              SizedBox(height: 5,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        height: 20,
                        padding: EdgeInsets.only(left: 12),
                        child:Text('Personal Info',
                          style: TextStyle(fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                              fontStyle: FontStyle.normal),)
                    ),
                    SizedBox(width: 90,),
                    GestureDetector(
                      onTap: (){
                        _showEditDialog(context);
                      },
                      child: RichText(
                        text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Edit',
                                style: TextStyle(fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blue,
                                  fontStyle: FontStyle.normal,
                                  decoration: TextDecoration.underline,
                                ),
                                // Use GestureRecognizer to detect taps
                              ),
                            ]),),
                    )]),
              SizedBox(height: 7,),
              Divider(
                thickness: 1.5,
                color: Colors.black45,
              ),
              SizedBox(height: 3,),
              Container(
                height: 32,
                width: 280,
                decoration: BoxDecoration(
                  color: Colors.white, // Background color of the container
                  border: Border.all(
                    color: Colors.grey, // Border color
                    width: 1, // Border width
                  ),
                  borderRadius: BorderRadius.circular(7), // Optional: rounded corners
                ),

                child: Row(
                    children: [
                      SizedBox(width: 20,),
                      Text('$name',
                        style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black87),),]),
              ),
              SizedBox(height: 10,),
              Container(
                height: 32,
                width: 280,
                decoration: BoxDecoration(
                  color: Colors.white, // Background color of the container
                  border: Border.all(
                    color: Colors.grey, // Border color
                    width: 1, // Border width
                  ),
                  borderRadius: BorderRadius.circular(7), // Optional: rounded corners
                ),
                child: Row(children: [
                  SizedBox(width: 20,),
                  Text(
                    '$contactNo',
                    style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black87),),
                ]),),
              SizedBox(height: 10,),
              Container(
                width: 280,
                height: 32,
                decoration: BoxDecoration(
                  color: Colors.white, // Background color of the container
                  border: Border.all(
                    color: Colors.grey, // Border color
                    width: 1, // Border width
                  ),
                  borderRadius: BorderRadius.circular(7), // Optional: rounded corners
                ),
                child:Row(children: [
                  SizedBox(width: 20,),
                  Text(
                    '$email',
                    style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black87),
                  ),
                ]),),

              SizedBox(height: 10),
              Row(
                  children: [
                    Container(
                      height: 30,
                      width: 135,
                      child: OutlinedButton(
                        onPressed: () {
                          Get.to(() => changePasswordScreen(username: userIdController.text.trim()));
                        },
                        style: ButtonStyle(
                          side: MaterialStateProperty.all(
                            BorderSide(color: Colors.yellow, width: 3), // Change border color and width
                          ),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7), // Rounded corners
                            ),
                          ),
                        ),
                        child: Text('Change Password',style: TextStyle(
                            fontSize: 10,fontWeight: FontWeight.bold,color: Colors.black)),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 30,
                      width: 110,
                      child: TextButton(
                        onPressed: () {
                          _confirmSignOut(context);
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.yellow,
                          shape: RoundedRectangleBorder(

                            borderRadius: BorderRadius.circular(7), // Rounded corners
                          ),
                        ),
                        child: Row(
                            children: [
                              SizedBox(width: 20,) ,
                              Text('Logout',style: TextStyle(
                                  fontSize: 10,fontWeight: FontWeight.bold,color: Colors.black)),
                              SizedBox(width: 5,) ,
                              Icon(Icons.logout_outlined),
                            ]),
                      ),),
                    SizedBox(height: 50)
                  ]),
            ],
          ),
        ),
      ],
    );
  }

  void _showEditDialog(BuildContext context) {
    TextEditingController fullName=TextEditingController();
    TextEditingController email=TextEditingController();
    TextEditingController position=TextEditingController();
    TextEditingController mobile=TextEditingController();
    TextEditingController dob=TextEditingController();
    final Size size = MediaQuery.of(context).size;
    Get.dialog(
      Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Container(
          padding: EdgeInsets.all(8),
          width:  size.width * 0.410,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:BorderRadius.circular(5),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width * 0.025,),
                  Text(
                    "Personal Information",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: size.width * 0.230,),
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(Icons.cancel_outlined,size: 25,color: black,))
                ],
              ),
              Divider(),
              SizedBox(height: size.height * 0.012,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width:size.width *  0.08,),
                  Text('Full Name', style: TextStyle(fontSize: 14)),
                  SizedBox(width: size.width * 0.093,),
                  // Text('Last Name', style: TextStyle(fontSize: 14)),
                ],
              ),
              SizedBox(height: size.height * 0.007,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: size.width* 0.080,),
                  newContainer(context, fullName,'mdm'),
                  // myContainer(context, lastName),
                ],
              ),
              SizedBox(height:size.height * 0.020,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: size.width * 0.080,),
                  Text('Mobile Number', style: TextStyle(fontSize: 14)),
                ],
              ),
              SizedBox(height: size.height *0.007,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: size.width * 0.080,),
                  newContainer(context, email,'8056863355')
                ],
              ),
              SizedBox(height:size.height * 0.020,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: size.width * 0.080,),
                  Text('Email Address', style: TextStyle(fontSize: 14)),
                ],
              ),
              SizedBox(height: size.height *0.007,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: size.width * 0.080,),
                  newContainer(context, email,'adinin@gmail.com')
                ],
              ),
              SizedBox(height:size.height * 0.020,),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   children: [
              //     SizedBox(width: size.width * 0.080,),
              //     Text('Mobile Number', style: TextStyle(fontSize: 14)),
              //     SizedBox(width: size.width * 0.077,),
              //   ],
              // ),


              SizedBox(height:size.height * 0.040,),
              MaterialButton(
                minWidth: size.width * .06,
                height: size.height * 0.03,
                onPressed: () {
                  Get.back(); // Close the dialog
                },
                child: Text('Save',style: TextStyle(fontSize: 16,fontFamily: 'Inter',),),
                color: Colors.yellow,
                textColor: Colors.black,
              )
            ],
          ),
        ),
      ),
      barrierDismissible: false, // Prevents dismissing the dialog by tapping outside
    );
  }
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
        desktop: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(''),
            flexibleSpace: Container(
              decoration: BoxDecoration(
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(1.0), // Height of the border
              child: Container(
                color: Colors.black12, // Border color
                height: 1.0, // Height of the border
              ),
            ),
            actions: [
              Row(
                  children: [
                    SizedBox(width: 20,),
                    Center(
                      child: Container(
                        height: 190,
                        width: 190,
                        child: Image.asset('assets/images/awe logo.png',fit: BoxFit.contain),),),
                  ]),
              Spacer(), // Pushes the next widgets to the right
              // Icon(Icons.mail_outline_outlined),
              SizedBox(width: 30), // spacing between icons
              Icon(Icons.notifications_outlined),

              Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    Container(
                      width: 15.0,  // Set the width
                      height: 15.0, // Set the height
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,  // Circular shape
                        color: Colors.yellow,      // Background color
                      ),
                      child: Center(
                        child: Text(
                          '1',
                          style: TextStyle(fontSize:9,fontWeight:FontWeight.bold,color: Colors.black),
                        ),
                      ),
                    ),]),
              SizedBox(width: 70), // spacing between icons
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Welcome Mdm Wong',
                    style: TextStyle(fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                        fontStyle: FontStyle.normal), // Reduce height between lines
                  ),
                  Text(
                    formattedDate,
                    style: TextStyle(fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Colors.black54,
                        fontStyle: FontStyle.normal), // Same height to ensure no spacing
                  ),
                ],
              ),
              SizedBox(width: 30,),
              Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Center(
                      child: Container(
                        height: 75,
                        child: CircleAvatar(
                            backgroundImage: AssetImage('assets/images/user image.png'),
                            radius: 28,
                            child:Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.end,
                                //mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    height:22,
                                    width: 500,
                                    padding: EdgeInsets.only(left: 24,top: 3,),
                                    child: TextButton(
                                        style: TextButton.styleFrom(
                                            backgroundColor: Colors.grey.shade300,
                                            shape: CircleBorder()
                                        ),
                                        onPressed: () {
                                          _showPopupMenu(context);
                                        }, child: Icon(Icons.edit_outlined,size: 10,color: Colors.black87,)
                                    ),)])
                        ),
                      ),),]),
              SizedBox(width: 30), // spacing between the profile and app bar end
            ],
            toolbarHeight: 75.0,
          ),
          backgroundColor: bgColor,
          body: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Dashboard(),
                ],
              ),
            ),
          ),
        ),
        tablet: Scaffold(
          appBar: AppBar(
            backgroundColor:bgColor,
            title: Text(''),
            flexibleSpace: Container(
              decoration: BoxDecoration(
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(1.0), // Height of the border
              child: Container(
                color: Colors.black12, // Border color
                height: 1.0, // Height of the border
              ),
            ),
            actions: [
              Row(
                  children: [
                    SizedBox(width: 20,),
                    Center(
                      child: Container(
                        height: 190,
                        width: 190,
                        child: Image.asset('assets/images/awe logo.png',fit: BoxFit.contain),),),
                  ]),
              Spacer(), // Pushes the next widgets to the right
              // Icon(Icons.mail_outline_outlined),
              SizedBox(width: 30), // spacing between icons
              Icon(Icons.notifications_outlined),

              Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    Container(
                      width: 15.0,  // Set the width
                      height: 15.0, // Set the height
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,  // Circular shape
                        color: Colors.yellow,      // Background color
                      ),
                      child: Center(
                        child: Text(
                          '1',
                          style: TextStyle(fontSize:9,fontWeight:FontWeight.bold,color: Colors.black),
                        ),
                      ),
                    ),]),
              SizedBox(width: 70), // spacing between icons
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Welcome Mdm Wong',
                    style: TextStyle(fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                        fontStyle: FontStyle.normal), // Reduce height between lines
                  ),
                  Text(
                    formattedDate,
                    style: TextStyle(fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Colors.black54,
                        fontStyle: FontStyle.normal), // Same height to ensure no spacing
                  ),
                ],
              ),
              SizedBox(width: 30,),
              Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Center(
                      child: Container(
                        height: 75,
                        child: CircleAvatar(
                            backgroundImage: AssetImage('assets/images/user image.png'),
                            radius: 28,
                            child:Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.end,
                                //mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    height:22,
                                    width: 500,
                                    padding: EdgeInsets.only(left: 24,top: 3,),
                                    child: TextButton(
                                        style: TextButton.styleFrom(
                                            backgroundColor: Colors.grey.shade300,
                                            shape: CircleBorder()
                                        ),
                                        onPressed: () {
                                          _showPopupMenu(context);
                                        }, child: Icon(Icons.edit_outlined,size: 10,color: Colors.black87,)
                                    ),)])
                        ),
                      ),),]),
              SizedBox(width: 30), // spacing between the profile and app bar end
            ],
            toolbarHeight: 75.0,
          ),
          backgroundColor: bgColor,
          body: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Dashboard(),
                ],
              ),
            ),
          ),
        ),
        mobile:Scaffold(
          appBar: AppBar(),
          backgroundColor: bgColor,
          body: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: size.height * 0.75,),
              Row(
                children: [
                  SizedBox(width: size.width * 0.4,),
                  MaterialButton(
                    onPressed: (){
                      Get.to(()=>ApplyLeaveScreen());
                    },
                    minWidth: size.width * 0.075,
                    height: size.height * 0.055,
                    color: yellow,
                    child: Text('Apply Leave',style: TextStyle(fontFamily: 'Inter,',fontSize: 15,fontWeight: FontWeight.bold,color: black),),
                  ),
                ],
              )
            ],
          ),
        ),
        paddingWidth: size.width * 0.1,
        bgColor: bgColor);
  }
}

Widget newContainer(BuildContext context, TextEditingController controller,String text){
  final Size size = MediaQuery.of(context).size;
  return Container(
    width: size.width * 0.24,
    height: size.height * 0.038, // Increase the height for better alignment
    child: Material(
      color: Colors.transparent,
      child: TextField(
        controller: controller,
        style: TextStyle(fontSize: 16), // Adjust font size if necessary
        decoration: InputDecoration(
          hintText: text,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: grey, width: 1),
            borderRadius: BorderRadius.circular(0),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: size.height * 0.010, horizontal: size.width * 0.007), // Adjust vertical padding
        ),
      ),
    ),
  );

}

Widget myContainer(BuildContext context, TextEditingController controller){
  final Size size = MediaQuery.of(context).size;
  return Container(
    width: size.width * 0.10,
    height: size.height * 0.038,
    child: Material(
      color: Colors.transparent,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: grey,width: 1),
            borderRadius: BorderRadius.circular(0),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: size.height * 0.010, horizontal: size.width * 0.007),
        ),

      ),
    ),
  );
}