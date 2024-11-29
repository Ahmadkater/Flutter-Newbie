import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/HomePage.dart';
import 'package:whatsapp/Screens/pagetwo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Page_Two());
  }
}
