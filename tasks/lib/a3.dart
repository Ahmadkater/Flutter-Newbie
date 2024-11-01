import 'dart:collection';
import 'dart:io';

List<int> getinputarray()
{
  List<int> l = new List<int>();
  stdout.write("Enter Numbers seperated by comma: ");
  try 
  {
      for (var element in stdin.readLineSync().split(","))
      {
        l.add(int.parse(element));
      }
  }

  catch (e)
  {
     print("invalid input");
  }
  
  return l;
}

int getmin(List<int> l)
{
  int min = l[0];
  for (var element in l)
  {
    if (element < min)
    {
      min = element;  
    }
  }
  print(min);
  return min;
}

int calculateeven(List<int> l)
{
  int sumeven = 0;
  for (var element in l)
  {
    if (element %2 == 0)
    {
      sumeven += element;  
    }  
  }
  print(sumeven);
  return sumeven;
}

int countocurrancesof2(List<int> l)
{
  int count= 0;
  for (var element in l)
  {
    if (element == 2)
    {
      count++;  
    }  
  }

  print(count);
  return count;

}

int countocurrances(List<int> l)
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

  //print structure

  for (var element in m.entries)
  {
    stdout.write(element.key);
    stdout.write(" -> ");
    stdout.write(element.value);
    stdout.write("\n");
    
  }
}

List<int> bubblesort(List<int> l)
{
  int n = l.length -1;
  for (var i = 0; i < n ; i++)
  {
    for (var j = 0; j < n-i ; j++)
    {

      if (l[j] > l[j+1])
      {
          int temp = l[j];
          l[j] = l[j+1];
          l[j+1] = temp;
      }
      stdout.write(l[j]);
      stdout.write(" ");
      stdout.write(l[j+1]);
      stdout.write(" \n");
    }  
  }
  print(l);
  return l;
}


List<int> optimizedbubblesort(List<int> l)
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
  print(l);
  return l;
}

List<int> selectionSort(List<int> l) 
{
  int n = l.length; 
  
  for (int i = 0; i < n - 1; i++) {
    int minIndex = i; 

    for (int j = i + 1; j < n; j++) {
      if (l[j] < l[minIndex]) {
        minIndex = j; 
      }
    }

    if (minIndex != i) {
      int temp = l[i];
      l[i] = l[minIndex];
      l[minIndex] = temp;
    }
  }
  print(l);
  return l; 
}
/*Linear Search:

    Best Case: O(1) – This occurs when the target element is the first element in the list. The algorithm finds the element immediately.
    Average Case: O(n) – On average, the search will need to check about half of the elements in the list to find the target.
    Worst Case: O(n) – This happens when the target element is not in the list or is the last element, requiring the algorithm to check every element.

Binary Search:

    Best Case: O(1) – This occurs when the target element is at the midpoint of the list during the first comparison.
    Average Case: O(log n) – On average, binary search cuts the search space in half with each comparison, leading to logarithmic time complexity.
    Worst Case: O(log n) – The worst-case scenario also results in logarithmic complexity as the search space reduces by half each time, continuing until the element is found or the search space is empty. */




/*     Bubble Sort:
        Best Case: O(n) – This occurs when the list is already sorted. The algorithm will make one pass through the list and find no elements to swap, allowing it to exit early.
        Average Case: O(n²) – On average, the algorithm will need to make multiple passes through the list, with a significant number of comparisons and swaps.
        Worst Case: O(n²) – This happens when the list is sorted in reverse order, requiring the maximum number of swaps and comparisons.

    Selection Sort:
        Best Case: O(n²) – Regardless of the initial order of the list, the algorithm always scans through the entire unsorted portion to find the minimum element, resulting in the same number of comparisons.
        Average Case: O(n²) – Similar to the worst case, as it consistently compares every element in the unsorted portion.
        Worst Case: O(n²) – The number of comparisons remains the same as it always processes through the entire list for each element.

    Insertion Sort:
        Best Case: O(n) – This occurs when the list is already sorted, and the algorithm only makes one pass through the list without needing to perform any shifts.
        Average Case: O(n²) – In a typical scenario, the algorithm will need to shift elements as it finds the correct position for each new element.
        Worst Case: O(n²) – This occurs when the list is sorted in reverse order, requiring the maximum number of shifts for each insertion.

Summary Comparison

    Efficiency:
        Best Case: Insertion Sort is the most efficient with O(n) in the best case, while Bubble Sort also achieves this with early exit. Selection Sort does not benefit from any specific ordering.
        Average and Worst Cases: All three algorithms have O(n²) time complexity in these cases, but Insertion Sort typically performs better in practice on average due to fewer operations when the data is nearly sorted.

    Practical Use:
        Bubble Sort: Rarely used in practice due to inefficiency despite its simplicity.
        Selection Sort: More efficient than Bubble Sort but still not optimal for large datasets.
        Insertion Sort: Often used for small datasets or lists that are already partially sorted due to its adaptive nature.*/