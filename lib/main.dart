import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:awe_project/Screens/apply_leave_screen.dart';
import 'package:awe_project/Screens/dashboard_screen.dart';
import 'package:awe_project/Screens/login_screen.dart';
import 'package:awe_project/amplifyconfiguration.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await _configureAmplify();

  runApp(MyApp());
}
//auth
Future<void> _configureAmplify() async {

  AmplifyAuthCognito authPlugin = AmplifyAuthCognito();
  await Amplify.addPlugin(authPlugin);

  try {
     await Amplify.configure(amplifyconfig);
  } catch (e) {
    print('Amplify configure failed: $e');
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}


//tab view
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashBoardScreeen(),
    );
  }
}

