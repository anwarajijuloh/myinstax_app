import 'package:flutter/material.dart';
import 'page/home_screen.dart';
import 'widget/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(const Duration(seconds: 5)),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SplashScreen();
        } else {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            title: "MyApp Instax",
            home: Home(),
          );
        }
      },
    );
  }
}
