
import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:awe_project/Screens/apply_leave_screen.dart';
import 'package:awe_project/Screens/dashboard_screen.dart';
import 'package:awe_project/Screens/login_screen.dart';
import 'package:awe_project/Screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'amplifyconfiguration.dart';
import 'globals/navigation_bar.dart';
import 'models/ModelProvider.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Amplify
  await _configureAmplify();

  runApp(MyApp());
}

Future<void> _configureAmplify() async {
  try {
    // final datastorePlugin = AmplifyDataStore(modelProvider: ModelProvider.instance);
    final authPlugin = AmplifyAuthCognito();
    final storagePlugin = AmplifyStorageS3();
    final apiPlugin = AmplifyAPI(
      options: APIPluginOptions(modelProvider: ModelProvider.instance),
    );

    await Amplify.addPlugins([ authPlugin, storagePlugin, apiPlugin]);
    await Amplify.configure(amplifyconfig);
    print('Successfully configured Amplify');
  } catch (e) {
    print('Could not configure Amplify: $e');
  }
}



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

