
import 'package:awe_project/Components/helper_class.dart';
import 'package:awe_project/Screens/dashboard_screen.dart';
import 'package:awe_project/globals/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController userIdController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      desktop:
         Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(flex: 1,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 40,bottom: 30,top: 90,left: 10),
                      child: SizedBox(
                        width: 280,
                        height: 70,
                        child: Image.asset('assets/images/logo (2).png'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 45,top: 15,left: 10),
                      child: Container(
                        width: 430,
                        height: 320,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/login.png'),
                            )
                        ),
                      ),
                    )
                  ],
                )),
            Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 90),
                      child: Card(
                        elevation: 3,
                        shadowColor: Colors.white,
                        child: Container(
                          width: 420,
                          height: 440,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 80),
                                child: Text("Login",style: TextStyle(fontSize: 32,fontFamily: 'Inter',decoration: TextDecoration.none,color: black),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 290,top: 10,bottom: 2),
                                child: Text('User Id',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                              ),
                              MyTextField(controller: userIdController, text: 'User ID', icon: Icons.person_outline),
                              SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.only(right: 290,top: 10,bottom: 2),
                                child: Text('Password',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                              ),
                              MyTextField(controller: passwordController, text: 'Password', icon: Icons.lock_outline),
                              SizedBox(height: 30,),
                              MaterialButton(
                                onPressed: (){
                                  Get.to(() =>DashBoardScreeen());
                                },
                                minWidth: 350,
                                height: 40,
                                color: yellow,
                                splashColor: yellow,
                                child: Text("Login",style: TextStyle(color: black,fontFamily: 'Open Sans',fontSize: 16),),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ))
          ],
        ),

        tablet: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(flex: 1,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 40,bottom: 30),
                        child: SizedBox(
                          width: 280,
                          height: 70,
                          child: Image.asset('assets/images/logo (2).png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 45,top: 15),
                        child: Container(
                          width: 430,
                          height: 320,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/login.png'),
                              )
                          ),
                        ),
                      )
                    ],
                  )),
              Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20,),
                        child: Card(
                          elevation: 3,
                          shadowColor: Colors.white,
                          child: Container(
                            width: 420,
                            height: 440,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 80),
                                  child: Text("Login",style: TextStyle(fontSize: 32,fontFamily: 'Inter',decoration: TextDecoration.none,color: black),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 290,top: 10,bottom: 2),
                                  child: Text('User Id',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                                ),
                                MyTextField(controller: userIdController, text: 'User ID', icon: Icons.person_outline),
                                SizedBox(height: 10,),
                                Padding(
                                  padding: const EdgeInsets.only(right: 290,top: 10,bottom: 2),
                                  child: Text('Password',style: TextStyle(fontFamily: 'Inter',fontSize: 16,color: black),),
                                ),
                                MyTextField(controller: passwordController, text: 'Password', icon: Icons.lock_outline),
                                SizedBox(height: 30,),
                                MaterialButton(
                                  onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DashBoardScreeen()));
                                  },
                                  minWidth: 350,
                                  height: 40,
                                  color: yellow,
                                  splashColor: yellow,
                                  child: Text("Login",style: TextStyle(color: black,fontFamily: 'Open Sans',fontSize: 16),),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ),
        mobile: Column(),
        paddingWidth: size.width * 0.1,
        bgColor: bgColor);
  }
}

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String text;
  final IconData icon;
  const MyTextField({super.key, required this.controller, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return   Card(
      elevation: 2,
      shadowColor: Colors.white,
      child: Container(
        width: 360,
        height: 35,
        child: Material(
          color: Colors.white,
          child: TextField(
            controller: controller,
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

