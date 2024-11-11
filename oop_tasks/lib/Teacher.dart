import 'package:oop_tasks/Person.dart';

class Teacher extends Person {
  int numcourses = 0;
  List<String> courses = [];

  Teacher(super.name, super.address);

  bool addCourse(String course) 
  {
    if (courses.length < 1) 
    {
      courses.add(course);
      return true;
    }
    else
    {
      for (var element in courses)
      {
        if (element == course)
        {
          return false;
        }
      }

    courses.add(course);
    numcourses++;
    return true;
    }

  }

  bool removeCourse(String course)
  {
    
    if (courses.length < 1) 
    {
      return false;
    }
    
    else
    {
      for (var element in courses)
    {
      if (element == course)
      {
        courses.remove(course);
        numcourses -- ;
        return true;
      }  
    }

    return false;
    }
  }
}
