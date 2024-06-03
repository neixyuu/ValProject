import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAGoTjQCDku-G_E-PqwdnJ0bCTygN5Xs_g",
            authDomain: "finalproject-f2a54.firebaseapp.com",
            projectId: "finalproject-f2a54",
            storageBucket: "finalproject-f2a54.appspot.com",
            messagingSenderId: "63436674174",
            appId: "1:63436674174:web:92984505c384cf86c9f42f",
            measurementId: "G-FNG6E44F29"));
  } else {
    await Firebase.initializeApp();
  }
}
