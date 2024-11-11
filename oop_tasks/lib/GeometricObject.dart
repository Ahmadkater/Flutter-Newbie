abstract class GeometricObject 
{  
  String color = "white";
  bool filled = false;


  GeometricObject();
  GeometricObject.spicified(this.color,this.filled);

  @override
  String toString() {
    return "Object is $color and ${filled?"Filled":"Not Filled"}";
  }
}