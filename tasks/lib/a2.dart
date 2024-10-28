
import 'dart:io';
import 'dart:math';


void q1first10Naturalsum()
{
  int sum = 0 ;
  for (var i = 0; i < 10; i++)
  {
    sum += i;
  }

  print(sum);
}

void q2firstNnaturalnumbersandsum()
{
  int sum=0 ;
  int n = int.parse(stdin.readLineSync());
  print("The first $n natural number is : ");
  for (var i = 0; i < n; i++)
  {
    sum += n;
    stdout.write("$i");
  }
  stdout.write("\nThe Sum of Natural Number upto $n terms: $sum \n");
}

void q3Ntermsofoddnaturalnumbers()
{
  int sum=0 ;
  int n = int.parse(stdin.readLineSync());
  int counter = 0 ;
  stdout.write("The odd numbers are: ");
  for (var i = 1;; i+=2)
  {
      stdout.write("$i ");
      counter++;
      sum += i;
      if (counter == n)
      {
        break;  
      }
  }
//print(""); 
stdout.write("\nThe Sum of odd Natural Numbers upto $n terms: $sum \n");
}

void q4countofnumberstype()
{
  print("How many Number you want to check ?"); 
  int n = int.parse(stdin.readLineSync());
  int pos = 0 ;
  int neg = 0 ;
  int zeros = 0;

  for (var i = 0; i < n; i++)
  {
    stdout.write("enter $n numbers: ");
    int input = int.parse(stdin.readLineSync());
    if (input == 0)
    {
      zeros++;  
    }
    if (input > 0)
    {
      pos++;  
    } 
    else
    {
      neg++;
    }
  }
  print("You Entered $pos postive numbers And $neg negative and $zeros Zero");
}

int q5fact()
{
  int inp = int.parse(stdin.readLineSync());
  int result = 1 ;
  for (int i = inp; i > 1 ; i--)
  {
    result *= i ;
  }
  print(result);
}

void q6reversedigit()
{
  String num = stdin.readLineSync();
  int inp = int.parse(num);
  for (var d in num.split("").reversed)
  {
    stdout.write(d);
  }

}

void q7numbersdivisable56()
{
  for (var i = 100; i <= 1000; i++)
  {
    if (i % 5 == 0 && i%6 ==0)
    {
      stdout.write("$i ");  
    }  
  }
  print("");
}

void q8isprimenumber()
{
    int inp = int.parse(stdin.readLineSync());
    bool prime = true;
    for (var i = 2; i <= inp~/2; i++)
    {
      if (inp % i == 0)
      {
        prime = false;
        break; 
      }
    }

    if (prime)
    {
      print("yes") ;
    }
    else{print("no");}

}



