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
        : Scaffold(
            body: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [AppColors.blackColor, AppColors.blackColor],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                      image: const DecorationImage(
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
                Image.asset("assets/Planets/${planet.planetImage}"),
                Text(
                  "About",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
                Text(
                  planet.about,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                ),
              ],
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
