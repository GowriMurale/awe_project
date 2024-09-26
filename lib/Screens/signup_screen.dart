import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:awe_project/Components/helper_class.dart';
import 'package:awe_project/Screens/login_screen.dart';
import 'package:awe_project/globals/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController userIdController=TextEditingController();
  TextEditingController  emailController=TextEditingController();
  TextEditingController  passwordController=TextEditingController();
  Future<void> _signUp() async {
    try {
      Map<AuthUserAttributeKey, String> userAttributes = {
        AuthUserAttributeKey.email: emailController.text,
        AuthUserAttributeKey.preferredUsername: userIdController.text,
      };

      SignUpResult result = await Amplify.Auth.signUp(
        username: userIdController.text,
        password: passwordController.text,
        options: SignUpOptions(userAttributes: userAttributes),
      );

      if (result.isSignUpComplete) {
        // Navigate to verification screen or login
        Get.to(LoginScreen());
      } else {
        // Continue with further verification
        print("Sign up needs verification");
      }
    } on AuthException catch (e) {
      print("Error signing up: ${e.message}");
      _showErrorDialog(e.message); // Display the error
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
          body:   Center(
            child: Card(
              elevation: 2,
              shadowColor: Colors.white,
              child: Container(
                width: size.width * 0.280,
                height:size.height *  0.730,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(top: size.height * 0.12,),
                      child: Text("Sign up",style: TextStyle(fontSize: 32,fontFamily: 'Inter',decoration: TextDecoration.none,color: black),),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(right:size.width * 0.190,top: size.height * 0.02,bottom: size.height * 0.002),
                      child: Text('Email Id',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                    ),
                    MyTextField(controller: emailController, text: 'Email ID', icon: Icons.email_outlined, obscureText: false,),
                    SizedBox(height: size.height * 0.02,),
                    Padding(
                      padding:  EdgeInsets.only(right:size.width * 0.190,top: size.height * 0.02,bottom: size.height * 0.002),
                      child: Text('User Id',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                    ),
                    MyTextField(controller: userIdController, text: 'User ID', icon: Icons.person_outline, obscureText: false,),
                    SizedBox(height: size.height * 0.02,),
                    Padding(
                      padding:  EdgeInsets.only(right: size.width * 0.180,top: size.height * 0.01,bottom: size.height * 0.005),
                      child: Text('Password',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                    ),
                    MyTextField(controller: passwordController, text: 'Password', icon: Icons.lock_outline, obscureText: false,),
                    SizedBox(height: size.height * 0.075,),
                    MaterialButton(
                      onPressed: (){
                          _signUp();
                      },
                      minWidth: size.width * 0.228,
                      height:size.height * 0.060,
                      color: yellow,
                      splashColor: yellow,
                      child: Text("Sign Up",style: TextStyle(color: black,fontFamily: 'Open Sans',fontSize: 18),),
                    ),
                  ],
                ),
              ),
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