import 'package:amplify_core/amplify_core.dart';
import 'package:awe_project/Screens/apply_leave_screen.dart';
import 'package:awe_project/Screens/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:get/get.dart';
import 'Screens/login_screen.dart';
import 'amplifyconfiguration.dart'; // Make sure this file exists and contains your Amplify configuration

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await _configureAmplify();

  runApp(MyApp());
}

Future<void> _configureAmplify() async {
  try {
    // Add Amplify plugins
    await Amplify.addPlugins([
      AmplifyAuthCognito(),

    ]);

    // Configure Amplify with the backend
    await Amplify.configure(amplifyconfig);
  } catch (e) {
    print('An error occurred configuring Amplify: $e');
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'AWE Project',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}




