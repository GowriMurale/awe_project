import 'package:awe_project/Screens/login_screen.dart';
import 'package:awe_project/amplifyconfiguration.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';

 // Import the generated configuration

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
    _configureAmplify(); // Configure Amplify when the app starts
  }

  Future<void> _configureAmplify() async {
    try {
      // Add Amplify plugins (in this case, the Cognito plugin for authentication)
      final authPlugin = AmplifyAuthCognito();
      await Amplify.addPlugin(authPlugin);

      // Configure Amplify using the generated configuration
      await Amplify.configure(amplifyconfig); // amplifyconfig is from 'amplifyconfiguration.dart'

      print('Amplify configured successfully');
    } on AmplifyAlreadyConfiguredException {
      print("Amplify has already been configured. This usually occurs on Android when the app is restarted.");
    } catch (e) {
      print('Failed to configure Amplify: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: LoginScreen(),
    );
  }
}

