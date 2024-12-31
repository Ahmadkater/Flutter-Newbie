import 'package:flutter/material.dart';
import 'package:space/AppColors.dart';
import 'package:space/MediaAssets.dart';
import 'package:space/Planets.dart';

mixin PageIndexMixin {
  static int pageIndex = 0;

  // Set the page index
  void setPageIndex(int index) {
    pageIndex = index;
  }

  // Get the page index
  static int getPageIndex() {
    return pageIndex;
  }
}

class Cardwidget extends StatefulWidget {
  Cardwidget({super.key});
  @override
  State<Cardwidget> createState() => _CardwidgetState();
}

class _CardwidgetState extends State<Cardwidget> with PageIndexMixin {
  @override
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: PageView.builder(
          controller: controller,
          itemCount: Planets.solarSystem.length,
          onPageChanged: (index) {
            setPageIndex(index);
            setState(() {});
            print("current value is :  ${PageIndexMixin.pageIndex}");
          },
          itemBuilder: (context, index) {
            return Column(
              children: [
                Expanded(
                  child: Container(
                    child: Image.asset(
                      alignment: Alignment.center,
                      Planets.solarSystem[index].planetImage,
                      scale: 2,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(AppColors.redColor)),
                        onPressed: () {
                          controller.previousPage(
                              duration: Duration(seconds: 1),
                              curve: Curves.linear);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: AppColors.whiteColor,
                        )),
                    Text(
                      Planets.solarSystem[index].planetName,
                      style: TextStyle(
                          color: AppColors.whiteColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 24),
                    ),
                    IconButton(
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(AppColors.redColor)),
                        onPressed: () {
                          controller.nextPage(
                              duration: Duration(seconds: 1),
                              curve: Curves.linear);
                        },
                        icon: Icon(
                          Icons.arrow_forward,
                          color: AppColors.whiteColor,
                        )),
                  ],
                ),
              ],
            );
          }),
    );
  }
}
