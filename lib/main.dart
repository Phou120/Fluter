import 'package:flutter/material.dart';
// import 'package:learn_flutter/HomePage.dart';
import 'package:learn_flutter/LoginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: const Color.fromARGB(255, 61, 218, 145),
          iconTheme: IconThemeData(color: Colors.white, size: 30),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: LoginPage(),
    );
  }
}
