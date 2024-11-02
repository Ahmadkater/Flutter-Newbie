import 'dart:collection';
import 'dart:io';

List<num> getinputarray([String msg = "Enter Numbers seperated by comma: " , String ptrn=","])
{
  List<num> l = new List<num>();
  stdout.write(msg);
  try 
  {
      for (var element in stdin.readLineSync().split(ptrn))
      {
        //print(num.parse(element));
        l.add(num.parse(element));
      }
  }

  catch (e)
  {
     print("invalid input");
  }
  
  return l;
}

bool testArray(List<num> l, num check,[bool printstructure=true])
{
  bool ishere = false;

  for (var element in l)
  {
    if (check == element)
    {
      ishere = true;  
    }  
  }

  if (ishere)
  {
    if (printstructure) {
      print("YES");
    }
      
  } else 
  {

    if (printstructure) {
     print("NO"); 
    }
  }

  return ishere;

}

num calculateaverage(List<num> l)
{
  num sum = 0;

  for (var element in l)
  {
    sum += element;
  }

  print(sum/l.length);
  return (sum/l.length);
}

void secoundsmallest(List<num> l)
{
  int n = l.length -1;
  bool swap ;
  for (var i = 0; i < n ; i++)
  {
    swap = false;

    for (var j = 0; j < n-i ; j++)
    {
      
      if (l[j] > l[j+1])
      {
          int temp = l[j];
          l[j] = l[j+1];
          l[j+1] = temp;
          swap = true;
      }
    }  

    if (!swap)
    {
      //print("already sorted");
      break;  
    }
  }
  print(l[1]);
}

void studentscores(List<num> l ,[int length] )
{
  length = l.length;
  num max = l.first;

  for (var element in l)
  {
    if (element > max)
    {
      max = element;  
    }  
  }

  for (var i = 0; i < length; i++)
  {
    (l[i] >= max - 10) ? stdout.write("Student ${i+1} Score is ${l[i]} and grade is A \n"):
    (l[i] >= max - 20) ? stdout.write("Student ${i+1} Score is ${l[i]} and grade is B \n"): 
    (l[i] >= max - 30) ? stdout.write("Student ${i+1} Score is ${l[i]} and grade is C \n"):
    (l[i] >= max - 40) ? stdout.write("Student ${i+1} Score is ${l[i]} and grade is D \n"): 
    stdout.write("Student ${i+1} Score is ${l[i]} and grade is F \n");
  }

}

void reverselist(List<num> l)
  {
    for (var i = l.length -1; i > 0; i--)
    {
      stdout.write("${l[i]} ");
    }
  }


void countocurrances(List<num> l)
{
  HashMap m = new HashMap(); 

  for (var element in l.toSet())
  {
    m[element] = 0;
  }
  
  for (var element in l)
  {
    if (m.containsKey(element))
    {
      m[element]++;  
    }
  }


  for (var element in m.entries)
  {
    if (element.key != 0)
    {
    stdout.write(element.key);
    stdout.write(" Occurs ");
    stdout.write(element.value);
    element.value > 1 ?stdout.write(" times \n"):stdout.write(" time \n");  
    }
  }
}

void readunspeciefiednumberofscores()
{
  List<num> l = [];
  num number = 0;
  for (var i = 0; i < 100; i++)
  {
    try 
    {
      number = num.parse(stdin.readLineSync());
    }
    catch (e)
    {
      print("Invalid Input") ; 
    }
    
    if (number < 0)
    {
      break;  
    }
    l.add(number);
  }

  var avg = calculateaverage(l);
  var above = 0 ;
  var below = 0;
  var equal = 0;
  for (var element in l)
  {
    (element > avg) ? above++:
    (element < avg) ? below++: 
    equal++;
  
  }

  stdout.write("Above Average: $above \n");
  stdout.write("below Average: $below \n");
  stdout.write("Equal Average: $equal \n");


}

void q8()
{
  List<num> l = getinputarray("Enter ten numbers: "," ");
  //print(l);
  List<num> array = [];
  array.add(l.first);

  for (var element in l)
  {
    if (testArray(array, element,false) == false)
    {
      array.add(element);
    }  
  }

  stdout.write("The number of distinct number is ${array.length} \n");
  stdout.write("The distinct numbers are: ");
  for (var element in array)
  {
    stdout.write("$element ");  
  }
}