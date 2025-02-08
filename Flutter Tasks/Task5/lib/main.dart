import 'package:flutter/material.dart';
import 'package:islami/core/routes/app_routes.dart';
import 'package:islami/core/theme/Apptheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Islami App',
      themeMode: ThemeMode.dark,
      darkTheme: AppTheme.darkTheme,
      routes: AppRoutes.routes,
    );
  }
}
