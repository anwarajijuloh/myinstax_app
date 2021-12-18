import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                color: Colors.blue,
              ),
              Container(
                alignment: Alignment.topCenter,
                height: 400,
                width: 267,
                child: Image.asset(
                  "assets/fujifilm.png",
                  width: 180,
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 40,
                child: const Text(
                  "Made With ❤️️ | © 2021 ",
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
