import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:my_profile/route/routes.dart';

class InitApp {

  static const String apiKey = "AIzaSyA5A4Y2hJLI0Cx-7EsEMQ5Kdl_s3Jxfn5I";
  static const String authDomain = "my-profile-7d776.firebaseapp.com";
  static const String projectId = "my-profile-7d776";
  static const String storageBucket = "my-profile-7d776.appspot.com";
  static const String messagingSenderId = "527417471335";
  static const String appId = "1:527417471335:web:9c5fd495194478baf7ffc2";

  static void initializeApp(BuildContext context) async {

    WidgetsFlutterBinding.ensureInitialized();

    await Firebase.initializeApp(
        options: const FirebaseOptions(
          apiKey: apiKey,
          authDomain: authDomain,
          projectId: projectId,
          storageBucket: storageBucket,
          messagingSenderId: messagingSenderId,
          appId: appId,
        )
    );

    Navigator.popAndPushNamed(context, RouteManager.homePage);

  }
}
