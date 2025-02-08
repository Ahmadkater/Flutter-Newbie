import 'dart:math';

import 'package:flutter/material.dart';
import 'package:islami/core/constants/AppImages.dart';
import 'package:islami/core/theme/AppColors.dart';

class TasbehScreen extends StatefulWidget {
  TasbehScreen({super.key});

  @override
  State<TasbehScreen> createState() => _TasbehScreenState();
}

class _TasbehScreenState extends State<TasbehScreen> {
  int counter = 0;

  int index = 0;

  List<String> tasabeeh = [
    "سبحان الله ",
    "الحمد لله ",
    "لا اله الا الله ",
    "الله أكبر ",
    "لا حول ولا قوة الا بالله"
  ];
  double fontSize = 36;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            color: AppColors.black,
            image: DecorationImage(
                opacity: 0.2,
                image: AssetImage(
                  AppImages.sebhacover,
                ),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            SafeArea(
              child: Center(
                child: Image.asset(
                  "assets/images/sebhalogo.png",
                  color: AppColors.golden,
                ),
              ),
            ),
            Text(
              "سَبِّحِ اسْمَ رَبِّكَ الأعلى ",
              style: TextStyle(
                  fontFamily: "Janna LT",
                  fontWeight: FontWeight.w700,
                  fontSize: 36,
                  color: AppColors.white),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  counter++;
                  if (counter > 33) {
                    index++;
                    counter = 0;
                  }
                  if (index > tasabeeh.length - 1) {
                    index = 0;
                  }

                  if (index == 4) {
                    fontSize = 30;
                  }
                  setState(() {});
                },
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Image.asset(
                          AppImages.sebhahead,
                          fit: BoxFit.cover,
                          scale: 4,
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SafeArea(
                                  child: Text(
                                    tasabeeh[index],
                                    style: TextStyle(
                                        fontFamily: "Janna LT",
                                        fontWeight: FontWeight.w700,
                                        fontSize: fontSize,
                                        color: AppColors.white),
                                  ),
                                ),
                                Text(
                                  "${counter}",
                                  style: TextStyle(
                                      fontFamily: "Janna LT",
                                      fontWeight: FontWeight.w700,
                                      fontSize: fontSize,
                                      color: AppColors.white),
                                ),
                              ],
                            ),
                            AnimatedRotation(
                              duration: Duration(milliseconds: 500),
                              turns: counter / 30,
                              child: Image.asset(
                                AppImages.sebhabody,
                                fit: BoxFit.cover,
                                scale: 0.5,
                                //width: MediaQuery.of(context).size.width / 1.25,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
