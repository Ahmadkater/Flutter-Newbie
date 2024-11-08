import 'package:oop_tasks/BankAccount.dart';
import 'package:oop_tasks/Holiday.dart';
import 'package:oop_tasks/Movie.dart';
import 'package:oop_tasks/oop_tasks.dart' as oop_tasks;
import 'dart:collection';

void main(List<String> arguments) 
{
  /*BankAccount b = BankAccount();
  print(b);

  BankAccount b2 = BankAccount.init(balance: 500);
  print(b2.balance);
  b2.withdraw(amount: 100);
  print(b2.balance);
  b2.deposit(50);
  print(b2.balance);*/

  /*Holiday h1 = Holiday();
  Holiday h2 = Holiday("Independance Day",4,"July");
  var h = [h1,h2] ;

  print(Holiday.inSameMonth(h1, h2));
  print(Holiday.avgDay(h));*/

  var m = Movie("El Camino: A Breaking Bad Movie", "Netflix","+18");
  var m2 = Movie("Casino Royale", "Eon Productions","PG13");

  for (var element in Movie.getPG([m2,m]))
  {
    print(element);  
  }
}
