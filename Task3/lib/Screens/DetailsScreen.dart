import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:space/AppColors.dart';
import 'package:space/Planets.dart';

class Detailsscreen extends StatefulWidget {
  const Detailsscreen({super.key});

  @override
  State<Detailsscreen> createState() => _DetailsscreenState();
}

class _DetailsscreenState extends State<Detailsscreen> {
  @override
  late Planets planet;
  bool isLoading = true;

  Widget build(BuildContext context) {
    final index = ModalRoute.of(context)!.settings.arguments as int;
    print("the index is  ${index}");
    if (isLoading) {
      readFile(index); // Fetch data when the widget is built
    }

    return isLoading
        ? CircularProgressIndicator()
        : ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Scaffold(
              backgroundColor: AppColors.blackColor,
              body: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              AppColors.blackColor,
                              AppColors.blackColor
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                        image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage("assets/coverimage.png"),
                            alignment: Alignment.topCenter)),
                    child: SafeArea(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(children: [
                              IconButton(
                                  style: ButtonStyle(
                                      backgroundColor: WidgetStatePropertyAll(
                                          AppColors.redColor)),
                                  onPressed: () {
                                    Navigator.pushNamed(
                                      context,
                                      "ScreenOne",
                                    );
                                  },
                                  icon: Icon(
                                    Icons.arrow_back,
                                    color: AppColors.whiteColor,
                                  )),
                              SizedBox(
                                width: 100,
                              ),
                              Text(planet.planetName,
                                  style: TextStyle(
                                      color: AppColors.whiteColor,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700))
                            ]),
                            SizedBox(
                              height: 40,
                            ),
                            Text(
                              "${planet.title}",
                              style: TextStyle(
                                  color: AppColors.whiteColor,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700),
                            )
                          ]),
                    ),
                  ),
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage(
                                "assets/Planets/${planet.planetImage}"),
                            alignment: Alignment.topCenter)),
                  )),
                  SafeArea(
                    child: Container(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "About",
                            style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: 24,
                                fontWeight: FontWeight.w700),
                          ),
                          SafeArea(
                            minimum: EdgeInsets.only(top: 8, bottom: 16),
                            child: Text(
                              overflow: TextOverflow.visible,
                              planet.about,
                              style: TextStyle(
                                  color: AppColors.whiteColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          Text(
                            "Distance From Sun(Km): " + planet.dfe,
                            style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "Length of Day(hours): " + planet.lod,
                            style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "Orbital Period(Earth Years): " + planet.op,
                            style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "Radius(km): " + planet.radius,
                            style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "Mass(kg): " + planet.mass,
                            style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "Gravity(m/s²): " + planet.gravity,
                            style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "Surface Area(km²): " + planet.surfaceArea,
                            style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
  }

  void readFile(int index) async {
    var data = await rootBundle.loadString('assets/PlanetsData.txt');
    LineSplitter ls = LineSplitter();
    List<String> _data = ls.convert(data);
    setState(() {
      // Initialize planet with details fetched from the file
      planet = Planets.details(_data[index + 1].split(';'));
      isLoading = false; // Set loading to false once data is fetched
    });
  }
}
