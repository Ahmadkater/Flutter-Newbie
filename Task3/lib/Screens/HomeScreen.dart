import 'package:flutter/material.dart';
import 'package:space/AppColors.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Scaffold(
        backgroundColor: AppColors.blackColor,
        body: Container(
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Image.asset(
                "assets/logimage.png",
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Explore\nThe\nUniverse ",
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 48,
                      color: AppColors.whiteColor),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        padding: WidgetStateProperty.all(const EdgeInsets.all(16)),
                        backgroundColor:
                            WidgetStatePropertyAll(AppColors.redColor),
                        elevation: const WidgetStatePropertyAll(0)),
                    onPressed: () {
                      Navigator.pushNamed(context, 'ScreenOne');
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
