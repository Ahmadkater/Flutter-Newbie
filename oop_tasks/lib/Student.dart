import 'package:oop_tasks/Person.dart';

class Student extends Person
{
  int numcourses = 0;
  List<String> courses = [];
  List<int> grades = [];

  Student(super.name,super.address);
  void addCourseGrade(String course,int grade)
  {
    numcourses++;
    
    for (var i = 0; i < courses.length; i++)
    {
      courses[i]=course;
      grades[i]=grade;
    }
  }

  void printGrades()
  {
    for (var element in grades)
    {
      print(element)  ;
    }
  }

  double getAverageGrades()
  {
    double sum = 0;
    for (var element in grades)
    {
      sum += element;  
    }
    return sum / grades.length;
  }

}