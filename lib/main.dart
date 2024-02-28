import 'package:flutter/material.dart';
import 'package:instagram_clone/bottom_nav_screen/bottom_nav_screen.dart';
import 'package:instagram_clone/login/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone',
      theme: ThemeData(
        fontFamily: "sfpro",
        scaffoldBackgroundColor: Colors.black,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const LogInScreen(),
    );
  }
}
