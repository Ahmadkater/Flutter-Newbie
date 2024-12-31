import 'package:flutter/material.dart';
import 'package:space/AppColors.dart';
import 'package:space/Cardwidget.dart';
import 'package:space/Screens/DetailsScreen.dart';

class ScreenOne extends StatefulWidget {
  ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> with PageIndexMixin {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [AppColors.blackColor, AppColors.blackColor],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
              image: const DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage("assets/coverimage.png"),
                  alignment: Alignment.topCenter)),
          child: Column(
            children: [
              SafeArea(
                child: Text(
                  "Explore",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: AppColors.whiteColor),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Which planet \nwould you like to explore?",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: AppColors.whiteColor),
                  ),
                ),
              ),
              Expanded(flex: 4, child: Cardwidget()),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          padding:
                              WidgetStateProperty.all(const EdgeInsets.all(16)),
                          backgroundColor:
                              WidgetStatePropertyAll(AppColors.redColor),
                          elevation: const WidgetStatePropertyAll(0)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Detailsscreen(),
                            settings: RouteSettings(
                                arguments: PageIndexMixin.pageIndex),
                          ),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Explore",
                            style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: AppColors.whiteColor,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
