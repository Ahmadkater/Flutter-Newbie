import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:islami/core/routes/app_routes_name.dart';
import 'package:islami/core/theme/AppColors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState

    Future.delayed(Duration(seconds: 7), () {
      Navigator.pushReplacementNamed(context, AppRoutesName.intro);
    });
  }

  @override
  Widget build(BuildContext context) {
    var brightness =
        SchedulerBinding.instance.platformDispatcher.platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    print(isDarkMode);

    return Scaffold(
      backgroundColor: AppColors.black,
      body: Column(
        children: [
          Spacer(),
          Center(child: Image.asset("assets/images/logo.png")),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  "assets/images/route.png",
                  scale: 2,
                )),
          ),
        ],
      ),
    );
  }
}
