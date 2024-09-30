
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:awe_project/Components/helper_class.dart';
import 'package:awe_project/Screens/login_screen.dart';
import 'package:awe_project/globals/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class changePasswordScreen extends StatefulWidget {
  final String username;
  const changePasswordScreen({super.key, required this.username});

  @override
  State<changePasswordScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<changePasswordScreen> {
  TextEditingController userIdController=TextEditingController();
  TextEditingController  pasword=TextEditingController();
  TextEditingController  newPassword=TextEditingController();
  TextEditingController  confirmPassword=TextEditingController();

  //
  Future<void> _changePassword(BuildContext context) async {
    if (newPassword.text.trim() == confirmPassword.text.trim()) {
      try {
        // Confirm the sign-in with the new password
        SignInResult result = await Amplify.Auth.confirmSignIn(
          confirmationValue: newPassword.text.trim(),
        );

        if (result.isSignedIn) {
          Get.off(() => LoginScreen());
        } else {
          _showErrorDialog('Password change failed.');
        }
      } on AuthException catch (e) {
        _showErrorDialog(e.message);
      }
    } else {
      _showErrorDialog('Passwords do not match.');
    }
  }


  // Function to show error dialog
  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text("Signup Failed"),
        content: Text(message),
        actions: <Widget>[
          TextButton(
            child: Text("Okay"),
            onPressed: () {
              Navigator.of(ctx).pop();
            },
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
        desktop: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child:Container(
                    padding:  const EdgeInsets.all(10),
                    height: 350,
                    width: 10,
                    child: Image(image: AssetImage(
                        'assets/images/lock.png'),
                      fit: BoxFit.contain,
                      width: size.width  * 0.10, // 50% of screen width
                      height: size.height * 0.5,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding:  const EdgeInsets.all(30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          //padding:  const EdgeInsets.all(1),
                          height: 90,
                          width: 300,
                          child: Image(image: AssetImage(
                              'assets/images/awe logo.png'),
                            fit: BoxFit.contain,
                          ),),
                        Center(
                          child:Container(
                            height: 50,
                            child: const Text(
                              'Change Password',
                              style: TextStyle(fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                              ),
                              textAlign: TextAlign.right,
                            ),),),
                        const SizedBox(height: 10),
                        SizedBox(
                          width: 360,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('User ID',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,
                                  color: Colors.black,fontStyle: FontStyle.normal),),
                              Container(
                                height: 35,
                                width: 330,
                                child: TextField(
                                  controller: userIdController,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(color: Colors.grey.shade500),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey.shade400), // Border when enabled
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey.shade500), // Border when focused
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey.shade500), // Border when there is an error
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    disabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey.shade500), // Border when disabled
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                ),)
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          width: 360,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Current Password',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,
                                  color: Colors.black,fontStyle: FontStyle.normal),
                              ),
                              Container(
                                height: 35,
                                width: 330,
                                child: TextField(
                                  controller: pasword,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey.shade400), // Border when enabled
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey.shade500), // Border when focused
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey.shade500), // Border when there is an error
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    disabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey.shade500), // Border when disabled
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                ),)
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          width: 360,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('New Password',style:TextStyle(fontSize: 15,fontWeight: FontWeight.w600,
                                  color: Colors.black,fontStyle: FontStyle.normal)),
                              Container(
                                height: 35,
                                width: 330,
                                child: TextField(
                                  controller: newPassword,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey.shade400), // Border when enabled
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey.shade500), // Border when focused
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey.shade500), // Border when there is an error
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    disabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey.shade500), // Border when disabled
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    suffixIcon: IconButton(
                                      icon: Icon(Icons.visibility_off_outlined),
                                      onPressed: () {},
                                    ),
                                  ),
                                ),)
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),

                        SizedBox(
                          width: 360,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Confirm Password',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,
                                  color: Colors.black,fontStyle: FontStyle.normal),),
                              Container(
                                height: 35,
                                width: 330,
                                padding: const EdgeInsets.only( ),
                                child: TextField(
                                  controller: confirmPassword,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(color: Colors.black12, width: 1.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey.shade400), // Border when enabled
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey.shade500), // Border when focused
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey.shade500), // Border when there is an error
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    disabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey.shade500), // Border when disabled
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    suffixIcon: IconButton(
                                      icon: Icon(Icons.visibility_off_outlined),
                                      onPressed: () {},
                                    ),
                                  ),
                                ),)
                            ],
                          ),
                        ),
                        const SizedBox(height: 30),
                        Container(
                          child: Center(
                            child: ElevatedButton(
                              onPressed: () {
                                  _changePassword(context);
                              },
                              child: const Text('Update',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 13),
                                backgroundColor: Colors.yellow,
                                shape:  RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                            ),
                          ),
                          //SizedBox(height: 30)
                        ),
                        SizedBox(height: 80,width: 300,
                          child:  Divider(

                            color: Colors.grey,
                            thickness: 1.0,
                          ),)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        tablet: Scaffold(

        ),
        mobile: Scaffold(

        ),
        paddingWidth: size.width * 0.1,

        bgColor: bgColor);
  }
}


class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String text;
  final IconData icon;
  final bool obscureText;
  const MyTextField({super.key, required this.controller, required this.text, required this.icon, required this.obscureText});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return   Card(
      elevation: 2,
      shadowColor: Colors.white,
      child: Container(
        width: size.width *  0.235,
        height: size.height * 0.050,
        child: Material(
          color: Colors.white,
          child: TextField(
            controller: controller,
            obscureText: obscureText,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 10),  // Align the text vertically with the icon
              prefixIcon: Icon(
                icon,
                color: Colors.grey,
                size: 21,  // Adjust icon size if needed
              ),
              hintText: text,

              hintStyle: TextStyle(
                fontFamily: 'Inter',
                fontSize: 15,
                color: Colors.grey,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ),
    );
  }
}