import 'package:flutter/material.dart';
import 'package:login_page/Splash_Screen.dart';
import 'package:login_page/views/pdf_books_screen.dart';
import 'views/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'splashScreen()': (context) => loginScreen(),
        'loginScreen()': (context) => pdfBooks(),
      },
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: splashScreen(),
    );
  }
}
