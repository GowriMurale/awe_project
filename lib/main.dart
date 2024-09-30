
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:awe_project/Screens/apply_leave_screen.dart';
import 'package:awe_project/Screens/dashboard_screen.dart';
import 'package:awe_project/Screens/login_screen.dart';
import 'package:awe_project/Screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'amplifyconfiguration.dart';
import 'globals/navigation_bar.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    await Amplify.addPlugin(AmplifyAuthCognito());
    await Amplify.configure(amplifyconfig);
  } catch (e) {
    print('Amplify configuration failed: $e');
  }

  runApp(MyApp());
}

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//
//   await _configureAmplify();
//
//   runApp(MyApp());
// }
// Future<void> _configureAmplify() async {
//   try {
//     // Add Amplify plugins
//     await Amplify.addPlugins([
//       AmplifyAuthCognito(),
//
//     ]);
//
//     // Configure Amplify with the backend
//     await Amplify.configure(amplifyconfig);
//   } catch (e) {
//     print('An error occurred configuring Amplify: $e');
//   }
// }

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}


//tab view
//amplify config
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

