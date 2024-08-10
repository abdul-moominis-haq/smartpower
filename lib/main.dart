import 'dart:io';

import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';

import 'package:smartpower/pages/pagestorage.dart';

void main(List<String> args) async {
  runApp(const App());
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
              apiKey: "AIzaSyCeKRlPgH4jRWevdvWPX_uhAv-9N2J-YUc",
              appId: "1:373221334789:android:38f96339101dee9c3f616c",
              messagingSenderId: "373221334789",
              projectId: "smartpower-dd508"))
      : await Firebase.initializeApp();
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
