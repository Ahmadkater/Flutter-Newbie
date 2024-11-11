import 'package:oop_tasks/GeometricObject.dart';

class Rectangle extends GeometricObject
{
  double height = 1.0;
  double width = 1.0;

  Rectangle();
  Rectangle.spicified(this.width,this.height,String color, bool filled)
  {
    super.color = color;
    super.filled = filled;
  }

  double getArea()
  {
    return width * height;
  }

  double getPerimeter()
  {
    return 2*(width + height);
  }

  @override
  String toString() {
    return "Rectangle: height = $height, width = $width";
  }

}