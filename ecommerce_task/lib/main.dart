
import 'package:flutter/material.dart';
import 'home_screen.dart';


void main() {
  runApp(MyApp()); // Launch the app
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple E-commerce App', 
      home: HomeScreen(), 
      debugShowCheckedModeBanner: false,
    );
  }
}