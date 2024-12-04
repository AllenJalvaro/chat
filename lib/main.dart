import 'package:whatsben/Authenticate/Autheticate.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

// Define Firebase options for web
const firebaseConfig = FirebaseOptions(
    apiKey: "AIzaSyCZI7RKKwX4a8yS22oZJS85g3mfKtSkfo8",
    authDomain: "huzzl02.firebaseapp.com",
    projectId: "huzzl02",
    storageBucket: "huzzl02.firebasestorage.app",
    messagingSenderId: "407897970861",
    appId: "1:407897970861:web:597143bd7532939df9ce24");

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize Firebase with FirebaseOptions for web
  await Firebase.initializeApp(options: firebaseConfig);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Authenticate(),
    );
  }
}
