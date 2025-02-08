import 'package:flutter/cupertino.dart';
import 'package:islami/core/modules/hadieth/HadiethScreen.dart';
import 'package:islami/core/modules/home/HomeScreen.dart';
import 'package:islami/core/modules/intro/IntroScreen.dart';
import 'package:islami/core/modules/quran/QuranScreen.dart';
import 'package:islami/core/modules/radio/RadioScreen.dart';
import 'package:islami/core/modules/splash/SplashScreen.dart';
import 'package:islami/core/modules/tasbeh/TasbehScreen.dart';
import 'package:islami/core/modules/time/TimeScreen.dart';

import 'app_routes_name.dart';

class AppRoutes {
  AppRoutes._();
  static Map<String, Widget Function(BuildContext)> routes = {
    AppRoutesName.splash: (_) => SplashScreen(),
    AppRoutesName.intro: (_) => IntroScreen(),
    AppRoutesName.home: (_) => HomeScreen(),
    AppRoutesName.tasbeh: (_) => TasbehScreen(),
    AppRoutesName.quran: (_) => Quranscreen(),
    AppRoutesName.hadieth: (_) => Hadiethscreen(),
    AppRoutesName.radio: (_) => RadioScreen(),
    AppRoutesName.time: (_) => TimeScreen()
  };
}
