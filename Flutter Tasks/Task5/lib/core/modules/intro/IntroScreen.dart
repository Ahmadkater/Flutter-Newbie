import 'package:flutter/material.dart';
import 'package:islami/core/constants/AppIntro.dart';
import 'package:islami/core/modules/intro/Widgets/IntroWidget.dart';
import 'package:islami/core/theme/AppColors.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController _pageController = PageController();
  int currentIndex = 0;
  var introData = AppIntro.introItems;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.black,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: SafeArea(
                      child: Image.asset(
                "assets/images/islami logo.png",
                fit: BoxFit.cover,
              ))),
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: introData.length,
                  itemBuilder: (context, index) {
                    return IntroWidget(intro: introData[index]);
                  },
                  onPageChanged: (index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                ),
              ),
              Spacer(),
            ],
          ),
        ),
        bottomSheet: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Conditionally show the "Back" button if not on the first screen
              if (currentIndex > 0)
                TextButton(
                  onPressed: () {
                    _pageController.previousPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: Text(
                    'Back',
                    style: TextStyle(color: AppColors.golden),
                  ),
                ),
              Spacer(),
              Row(
                children: [
                  for (int i = 0; i < introData.length; i++) _buildDot(i),
                ],
              ),
              Spacer(),
              TextButton(
                  onPressed: () {
                    _pageController.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                    if (currentIndex >= introData.length - 1) {
                      Navigator.pushReplacementNamed(context, '/home');
                    }
                  },
                  child: currentIndex >= introData.length - 1
                      ? Text(
                          'Finish',
                          style: TextStyle(color: AppColors.golden),
                        )
                      : Text('Next',
                          style: TextStyle(color: AppColors.golden))),
            ],
          ),
        ));
  }

  Widget _buildDot(int index) {
    // Check if the current dot is active or not
    bool isActive = currentIndex == index;

    // Set the width for the active dot to be larger
    double width = isActive ? 18.0 : 8.0; // Active dot will be wider
    double height = 8.0; // Keep the height constant

    return AnimatedContainer(
      duration: Duration(milliseconds: 300), // Smooth transition for width
      margin: EdgeInsets.symmetric(horizontal: 4),
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: isActive ? AppColors.golden : Colors.grey, // Active dot is blue
        shape:
            BoxShape.rectangle, // Use rectangle to make it horizontally wider
        borderRadius:
            BorderRadius.circular(4), // Rounded corners for a pill shape
      ),
    );
  }
}
