import 'Shape.dart';

class Rectangle extends Shape
{

  int length ;
  int width;
  Rectangle(this.length,this.width);

  @override
  double getArea()
  {
    return length * width * 1.0;
  }


}