import 'package:flutter/material.dart';
import 'package:islami/core/constants/AppIntro.dart';
import 'package:islami/core/theme/AppColors.dart';

class IntroWidget extends StatelessWidget {
  AppIntro intro;
  IntroWidget({super.key, required this.intro});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(intro.image, width: 200, height: 200),
        SizedBox(height: 20),
        Text(
          intro.title,
          style: TextStyle(
              color: AppColors.golden,
              fontSize: 24,
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10),
        Text(
          intro.subtitle!,
          style: TextStyle(color: AppColors.golden, fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
