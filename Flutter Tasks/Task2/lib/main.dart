import 'package:facebook/Screens/Newsfeed.dart';
import 'package:facebook/Screens/loginscreen.dart';
import 'package:facebook/Screens/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Named Routes Demo',
      debugShowCheckedModeBanner: false,
      home: Loginscreen(),
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        'NewsFeed': (context) => NewsFeed()
        // When navigating to the "/second" route, build the SecondScreen widget.
      },
    );
  }
}
