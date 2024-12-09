import 'package:facebook/Screens/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:facebook/AppColors.dart';
import 'package:flutter/services.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          fullscreenDialog: false, builder: (_) => const Loginscreen()));
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: Column(
          children: [
            Expanded(
                child: Image.asset(
              "assets/App Rounded Logo.png",
              scale: 5,
            )),
            Text(
              "From",
              style: TextStyle(fontSize: 16, color: AppColors.greyColor),
            ),
            Image.asset(
              "assets/Meta Logo.png",
              scale: 5,
            )
          ],
        ),
      ),
    );
  }
}
