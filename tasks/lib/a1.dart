import 'dart:io';
import 'dart:math';

void q1EvenOdd()
{
  int num ;
  stdout.write("Please enter number: ");
  try
  {
    num = int.parse(stdin.readLineSync()) ;
    if (num % 2 == 0)
  {
    print("$num is even number");
  }
  else{ print("$num is odd number");}

    
  }
  catch (e)
  {
    print("$num is not an integer number");
  }

  
}

void q2sort3numbers(double n1 , double n2 , double n3)
{

  if (n1 == n2 || n1 == n3 || n2 == n3 )
    {
      if (n2 > n3)
      {
        print("her");
        print(n3);
        print(n2);
        print(n2);  
      }
      else
      {
        print("here");
        if (n1 > n3)
        {
          print(n3);
          print(n1);
          print(n2);
        }

        else
        {
          print(n1);
          print(n3);
          print(n2);

        }

      }
    }

  if (n1 < n2 && n1 < n3 )
  {
    print(n1);
    if (n2 < n3)
    {
      print(n2);
      print(n3);
    }
    else
    {
      print(n3);
      print(n2);
    }
  }


  if (n2 < n1 && n2 < n3 )
  {
    print(n2);
    if (n1 < n3)
    {
      print(n1);
      print(n3);
    }
    else
    {
      print(n3);
      print(n1);
    }
  }


if (n3 < n1 && n3 < n2 )
  {
    print(n3);
    if (n1 < n2)
    {
      print(n1);
      print(n2);
    }
    else
    {
      print(n2);
      print(n1);
    }
  }

}

void q3CanVote()
{
  int num ;
  stdout.write("Please enter Age: ");
  Exception e ;
  try
  {
    num = int.parse(stdin.readLineSync()) ;

    if(num < 0)
    {
      throw e;
    }
    
  if (num >= 21)
  {
    print("Congratulation! You are eligible for casting your vote ");
  }
  else{ print("Can't Vote ");}
    
  }
  catch (e)
  {
    print("Age $num is not valid");
  }


}

void q4Vowel()
{
  String letter ;
  stdout.write("Please enter a letter: ");
  Exception e ;
  try
  {
    letter = stdin.readLineSync().toLowerCase().trim() ;

    if (letter.length > 1 || int.parse(letter).runtimeType == int)
    {
      throw e;  
    }
    
  }
  catch (e)
  {
    print("Letter $letter is not a letter");
    return;
  }

  if (letter == 'a' || letter == 'e' || letter == 'i' || letter == 'o' || letter == 'u')
    {
      print("The alphabet $letter is a vowel");
    }
    else
    {
      print("The alphabet $letter is a constant");
    }

}

void q5minandmax(int n1 , int n2 , int n3)
{
  int min ;
  int max ;

  (n1 > n2 && n1 > n3) ? max = n1 : (n2 > n3 && n2 > n1) ? max = n2: max = n3;
  (n1 < n2 && n1 < n3) ? min = n1 : (n2 < n3 && n2 < n1) ? min = n2: min = n3; 

  if (n1 == n2 || n1 == n3 || n2 == n3 )
    {
      if (n2 > n3)
      {
        max = n2;
        min = n3; 
      }
      else
      {
        print("here");
        if (n1 > n3)
        {
          max = n1;
          min = n3;
        }

        else
        {
          min = n1;
          max = n3;
        }

      }
    }
    
  print("max: $max , min: $min");

}

void q6valuexyzw()
{
   /*int  x=3; 
     int  y=2; 
     int  z=x++;  
     int  w=++y;*/
     print("x = 4 , y = 3 , z = 3 , w = 3");
}

void q7yearsleft()
{
   int num ;
   Exception e ;
  try
  {
    stdout.write("Please enter name: ");
    var name = stdin.readLineSync();

    stdout.write("Please enter Age: ");
    num = int.parse(stdin.readLineSync());

    if(num < 0)
    {
      throw e;
    }

    num = 100-num;
    print("Hi, $name, you have $num years left to be 100 years old");

  }
  catch (e)
  {
    print("Age $num is invalid ");

  }

}

void q8grades()
{
  String grade;
  try
  {
    stdout.write("Please enter grade: ");
    grade = stdin.readLineSync().trim().toUpperCase();
    print(grade);

    if (grade != 'A' || grade != 'B' ||  grade != 'C' || grade != 'D' || grade != 'F')
    {
      print("here");
      throw e ;      
    }

    switch (grade)
    {
      case 'A': print("Excellent");
        break;
      case 'B': print("Outstanding");
        break;
      case 'D': print("can Do Better");
        break;
      case 'C': print("Good");
        break;
      case 'F': print("Failed!");
        break;
      default:
    }
  }
  catch(e)
  {
    print("grade $grade is invalid");
  }

  
}

void q9cylindervolume()
{
  double radius;
  double length ;
  try
  {

    stdout.write("Enter the radius and length of a cylinder: ");
    radius = double.parse(stdin.readLineSync());
    length = double.parse(stdin.readLineSync());
    double area = radius * radius * pi ;
    double volume = area * length ;
    print("The area is $area");
    print("The volume is $volume");
    
  }
  
  catch(e)
  {
    print("radius $radius and length $length is invalid");
  } 

}

void q10signofnumber()
{
  int num ;
  stdout.write("Please enter integer number: ");
  try
  {
    num = int.parse(stdin.readLineSync()) ;

    if(num < 0)
    {
      print("negative");

    }
    
  if (num > 0)
  {
    print("positive");
  }
    
  }
  catch (e)
  {
    print("num $num is not integar");
  }
}


