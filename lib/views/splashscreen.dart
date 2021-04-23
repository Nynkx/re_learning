import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

import 'home.dart';
import 'login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (BuildContext context) =>
                    GetStorage().read("token") != null
                        ? MyHomePage(title: "a")
                        : LoginPage(title: "b"),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Text("Splash Screen Design Needed")),
    );
  }
}
