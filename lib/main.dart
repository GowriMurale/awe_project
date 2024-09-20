// import 'package:amplify_core/amplify_core.dart';
// import 'package:awe_project/Screens/apply_leave_screen.dart';
// import 'package:awe_project/Screens/dashboard_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
// import 'package:get/get.dart';
// import 'Screens/login_screen.dart';
// import 'amplifyconfiguration.dart'; // Make sure this file exists and contains your Amplify configuration
//
// void main() async {
//
//
//   runApp(MyApp());
// }
//
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       title: 'AWE Project',
//       theme: ThemeData(),
//       debugShowCheckedModeBanner: false,
//       home: LoginScreen(),
//     );
//   }
// }

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'Screens/login_screen.dart';
import 'amplifyconfiguration.dart'; // Generated during the initialization

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Ensures bindings are initialized for async code
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
    _configureAmplify();
  }

  Future<void> _configureAmplify() async {
    // Add any Amplify plugins you want to use
    final authPlugin = AmplifyAuthCognito();
    await Amplify.addPlugin(authPlugin);

    // Configure Amplify (can only be done once)
    try {
      await Amplify.configure(amplifyconfig);
    } on AmplifyAlreadyConfiguredException {
      print("Tried to reconfigure Amplify; this can occur when your app restarts on Android.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: LoginScreen(),
      );
  }
}
