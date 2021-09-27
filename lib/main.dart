import 'package:flutter/material.dart';
import 'package:loltips/App/theme.dart';
import 'package:loltips/Screens/Home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appx',
      debugShowCheckedModeBanner: false,
      theme: themeData(),
      home: const HomeScreen(),
    );
  }
}
