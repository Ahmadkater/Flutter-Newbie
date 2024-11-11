import 'Shape.dart';

class Triangle extends Shape
{

  int base ;
  int height;

  Triangle(this.base,this.height);

  @override
  double getArea() {
    return base * height * 0.5;
  }
}