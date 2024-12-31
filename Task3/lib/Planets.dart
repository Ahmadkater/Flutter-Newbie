import 'package:space/MediaAssets.dart';

class Planets {
  String planetImage = "";
  String planetName = "";
  String planetModel = "";

  String title = "";
  String about = "";
  String dfe = "";
  String lod = "";
  String op = "";
  String radius = "";
  String mass = "";
  String gravity = "";
  String surfaceArea = "";

  Planets(this.planetName, this.planetImage);

  Planets.details(List<String> details) {
    planetName = details[0];
    planetImage = details[1];
    title = details[3];
    about = details[4];
    dfe = details[5];
    lod = details[6];
    op = details[7];
    radius = details[8];
    mass = details[9];
    gravity = details[10];
    surfaceArea = details[11];
  }

  static List<Planets> solarSystem = [
    Planets("Sun", MediaAssets.sunImage),
    Planets("Mercury", MediaAssets.mercuryImage),
    Planets("Venus", MediaAssets.venusImage),
    Planets("Earth", MediaAssets.earthImage),
    Planets("Mars", MediaAssets.marsImage),
    Planets("Jupiter", MediaAssets.jupiterImage),
    Planets("Saturn", MediaAssets.saturnImage),
    Planets("Uranus", MediaAssets.uranusImage),
    Planets("Neptune", MediaAssets.neptuneImage),
  ];
}
