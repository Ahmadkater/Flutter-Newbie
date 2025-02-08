class AppIntro {
  String image;

  String title;

  String subtitle;

  AppIntro({required this.image, required this.title, required this.subtitle});

  static List<AppIntro> introItems = [
    AppIntro(
        image: "assets/images/intro/1.png",
        title: "Welcome To Islami App",
        subtitle: ""),
    AppIntro(
        image: "assets/images/intro/2.png",
        title: "Welcome To Islami App",
        subtitle: "We Are Very Excited To Have You In Our Community"),
    AppIntro(
        image: "assets/images/intro/3.png",
        title: "Reading the Quran",
        subtitle: "Read, and your Lord is the Most Generous"),
    AppIntro(
        image: "assets/images/intro/4.png",
        title: "Bearish",
        subtitle: "Praise the name of your Lord, the Most High"),
    AppIntro(
        image: "assets/images/intro/5.png",
        title: "Holy Quran Radio",
        subtitle:
            "You can listen to the Holy Quran Radio through the application for free and easily")
  ];
}
