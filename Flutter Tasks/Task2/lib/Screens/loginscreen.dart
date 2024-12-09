import 'package:flutter/material.dart';
import 'package:facebook/AppColors.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(
                "assets/App Rounded Logo.png",
                scale: 5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  TextFormField(
                      initialValue: "Mobile Number or Email address ",
                      style: TextStyle(
                          color: AppColors.greyColor,
                          fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.whiteColor,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: BorderSide(
                                  color: AppColors.greyColor, width: 1)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: BorderSide(
                                  color: AppColors.greyColor, width: 1)),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: BorderSide(
                                  color: AppColors.greyColor, width: 1)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: BorderSide(
                                  color: AppColors.greyColor, width: 1)))),
                  SizedBox(
                    height: 24,
                  ),
                  TextFormField(
                      initialValue: "Password",
                      style: TextStyle(
                          color: AppColors.greyColor,
                          fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.whiteColor,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: BorderSide(
                                  color: AppColors.greyColor, width: 1)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: BorderSide(
                                  color: AppColors.greyColor, width: 1)),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: BorderSide(
                                  color: AppColors.greyColor, width: 1)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: BorderSide(
                                  color: AppColors.greyColor, width: 1))))
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'NewsFeed');
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)),
                          backgroundColor: AppColors.blueColor,
                          padding: EdgeInsets.all(16),
                        ),
                        child: Container(
                          child: Text(
                            "Login",
                            style: TextStyle(color: AppColors.whiteColor),
                          ),
                        )),
                  ),
                ),
              ],
            ),
            Expanded(
                child: Text(
              "Forgotten Password ?",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.greyColor),
            )),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)),
                          backgroundColor: AppColors.whiteColor,
                          padding: EdgeInsets.all(16),
                          side:
                              BorderSide(color: AppColors.blueColor, width: 1)),
                      onPressed: () {},
                      child: Container(
                          child: Text(
                        "Create Account",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.blueColor),
                      )),
                    ),
                  ),
                )
              ],
            ),
            Expanded(
                child: Image.asset(
              "assets/Meta Logo.png",
              scale: 5,
            ))
          ],
        ),
      ),
    );
  }
}
