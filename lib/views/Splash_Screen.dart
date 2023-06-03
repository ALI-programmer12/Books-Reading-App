import 'dart:async';

import 'package:flutter/material.dart';
import 'package:login_page/views/login_screen.dart';

class splashScreen extends StatefulWidget {
  splashScreen({Key? key}) : super(key: key);
  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => loginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/images/Splash_image_BQ.jpg'),
                height: 100,
                width: 100,
              ),
              Text(
                'Your Favourite Books\n            are here',
                style: TextStyle(fontSize: 30, color: Colors.purple),
              ),
              // SizedBox(
              //   height: 100,
              //   width: 100,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
