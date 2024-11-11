import 'dart:math';

import 'package:oop_tasks/GeometricObject.dart';

class Triangle extends GeometricObject{

  double side1 = 1.0;
  double side2 = 1.0;
  double side3 = 1.0;

  Triangle();
  Triangle.spicified(this.side1,this.side2,this.side3);
  double getArea()
  {
    double s = getPerimeter()/2;
    double a = s*(s-side1)*(s-side2)*(s-side3);
    return sqrt(a);
  }

  double getPerimeter()
  {
    return side1+side2+side3;
  }

  @override
  String toString() {
    return "Triangle: side1 = $side1, side2 = $side2, side3 = $side3";
  }
  
}