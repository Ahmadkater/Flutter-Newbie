
class Holiday 
{  
  late String name;
  late int day;
  late String month;

  Holiday([this.name = "", this.day = 0 , this.month = ""]);

  static bool inSameMonth(Holiday h1,Holiday h2)
  {
    bool result = false;
    result = (h1.month == h2.month)? true:false;

    return result;
  }

  static int avgDay(List<Holiday> h)
  {
    int sum = 0;

    for (var element in h)
    {
      sum += element.day;
    }

    return sum;
  }
}