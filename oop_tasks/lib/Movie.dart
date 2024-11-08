
class Movie 
{
  late String name = "";
  late String studio = "";
  late String rating = "";

  Movie(this.name, this.studio , [this.rating = "PG"]);  

  static List<Movie> getPG(List<Movie> m)
  {
    List<Movie> nm = [];

    for (var element in m) 
    {
      if (element.rating.contains("PG") )
      {
        nm.add(element);
      }
    }

    return nm;
  }

  @override
  String toString() {
    // TODO: implement toString

    return "$name : $studio : $rating ";
  }
}