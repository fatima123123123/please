import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:please/screen/welcome_screen.dart';

Future main() async{


  await Firebase.initializeApp();

  if(kIsWeb){
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBNHNCJpSUGS6U6Au8UF5IgFCjL5z64C30",
            authDomain: "legacycar-sec.firebaseapp.com",
            projectId: "legacycar-sec",
            storageBucket: "legacycar-sec.firebasestorage.app",
            messagingSenderId: "612637807217",
            appId: "1:612637807217:web:b3a72a30472e02e6de01d0",
            measurementId: "G-FXD23H6EKQ"));
  }else{
    await Firebase.initializeApp();
  }


  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Legacy carSEC',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: WelcomeScreen(),
    );
  }
}