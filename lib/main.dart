<<<<<<< HEAD
import 'package:awe_project/Screens/login_screen.dart';
import 'package:awe_project/amplifyconfiguration.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';

 // Import the generated configuration
=======


import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dartgit';

import 'Screens/login_screen.dart';
>>>>>>> 20ab1443a1789ec04b2a388dd49f57c89b0531ef

void main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: LoginScreen(),
    );
  }
}

