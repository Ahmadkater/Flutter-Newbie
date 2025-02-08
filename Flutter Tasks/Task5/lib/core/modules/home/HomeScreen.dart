import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami/core/constants/AppIcons.dart';
import 'package:islami/core/modules/hadieth/HadiethScreen.dart';
import 'package:islami/core/modules/quran/QuranScreen.dart';
import 'package:islami/core/modules/radio/RadioScreen.dart';
import 'package:islami/core/modules/tasbeh/TasbehScreen.dart';
import 'package:islami/core/modules/time/TimeScreen.dart';
import 'package:islami/core/routes/app_routes_name.dart';
import 'package:islami/core/theme/AppColors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    var brightness =
        SchedulerBinding.instance.platformDispatcher.platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    List<Widget> screens = [
      Quranscreen(),
      Hadiethscreen(),
      TasbehScreen(),
      RadioScreen(),
      TimeScreen()
    ];

    var theme = Theme.of(context);
    return Scaffold(
        backgroundColor: AppColors.black,
        body: screens[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            selectedIndex = value;
            setState(() {});
          },
          currentIndex: selectedIndex,
          backgroundColor: AppColors.golden,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.white,
          unselectedItemColor: AppColors.black,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                icon: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    decoration: BoxDecoration(
                        color: selectedIndex != 0
                            ? Colors.transparent
                            : AppColors.black.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(16)),
                    child: ImageIcon(AssetImage(AppIcons.quaran))),
                label: "Quran"),
            BottomNavigationBarItem(
                icon: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    decoration: BoxDecoration(
                        color: selectedIndex != 1
                            ? Colors.transparent
                            : AppColors.black.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(16)),
                    child: ImageIcon(AssetImage(AppIcons.hadeith))),
                label: "Hadieth"),
            BottomNavigationBarItem(
                icon: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    decoration: BoxDecoration(
                        color: selectedIndex != 2
                            ? Colors.transparent
                            : AppColors.black.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(16)),
                    child: ImageIcon(AssetImage(AppIcons.sebha))),
                label: "Sebha"),
            BottomNavigationBarItem(
                icon: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    decoration: BoxDecoration(
                        color: selectedIndex != 3
                            ? Colors.transparent
                            : AppColors.black.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(16)),
                    child: ImageIcon(AssetImage(AppIcons.radio))),
                label: "Radio"),
            BottomNavigationBarItem(
                icon: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    decoration: BoxDecoration(
                        color: selectedIndex != 4
                            ? Colors.transparent
                            : AppColors.black.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(16)),
                    child: ImageIcon(AssetImage(AppIcons.time))),
                label: "Time"),
          ],
        ));
  }
}
