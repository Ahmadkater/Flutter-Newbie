abstract class Shape

{
  late String color;

  double getArea(); 

  @override
  String toString() {
    return "${getArea()}";
  }
}