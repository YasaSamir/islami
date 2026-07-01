import 'dart:io';

// 1
/*
// 1
// Write a Program that takes a number from user  then prints “yes” if number is even and “no” if
// number is odd
void evenNumber() {
  print('enter the number to be checked: \n');
  int num = int.parse(stdin.readLineSync()!);
  if (num % 2 == 0) {
    print('the number is even');
  } else {
    print('the number is odd');
  }
}
 */

// 2
/*
// 2
// Sorting Three Floating Numbers
// Write a program that reads from user three floating-point numbers and sorts them. Your code
// should handle all cases.
void main() {
sortThreeNumbers() ;



}


void sortThreeNumbers() {
  print('enter the three number to be sorted: \n');
  num1 = double.parse(stdin.readLineSync()!);
  num2 = double.parse(stdin.readLineSync()!);
  num3 = double.parse(stdin.readLineSync()!);

  if (num1 > num2 && num1 >= num3 ) {
    print('the largest number is $num1');
    if (num2 >= num3) {
      print('the middle number is $num2');
      print('the smallest number is $num3');
    } else {
      print('the middle number is $num3');
      print('the smallest number is $num2');
    }
  } else if (num2 > num1 && num2 >= num3 ) {
    print('the largest number is $num2');
    if (num3 >= num1) {
      print('the middle number is $num3');
      print('the smallest number is $num1');
    } else {
      print('the middle number is $num1');
      print('the smallest number is $num3');
    }
  } else if (num3 > num1 && num3 >= num2) {
    print('the largest number is $num3');
    if (num1 >= num2) {
      print('the middle number is $num1');
      print('the smallest number is $num2');
    } else {
      print('the middle number is $num2');
      print('the smallest number is $num1');
    }
  } else if (num1 > num2 && num1 >= num3 ) {
    print('the largest number is $num1');
    if (num3 >= num2) {
      print('the middle number is $num3');
      print('the smallest number is $num2');
    } else {
      print('the middle number is $num2');
      print('the smallest number is $num3');
    }
  } else {
    print('the three numbers are equal');
  }
}

*/

// 3
/*

Write a program to read the age of a candidate from user and determine whether it is eligible for
casting his/her own
Hint if age >=21 then it eligible for casting vote

void eligibleForVote() {
  print('enter the age of the candidate: \n');
  int age = int.parse(stdin.readLineSync()!);
  if (age >= 21) {
    print('the candidate is eligible for casting his/her own vote');
  }
}


void main (){
  eligibleForVote();
}

 */

// 4
/*
Write a  program to check whether an alphabet is a vowel or consonant.
Vowel alphabet is ( الحروف المتحركه ):(a,i,o,u,e)
Consonant : rest of alphabets


void main (){

}
void chexkVowelOrConsonant() {
  String char = stdin.readLineSync()!;
  if (char == 'a' || char == 'i' || char == 'o' || char == 'u' || char == 'e') {
    print('the alphabet is a vowel');
  } else {
    print('the alphabet is a consonant');
  }

}

*/

// 5
/*

min and max
How can you find the minimum/maximum of three numbers using the ternary operator (?: ),
please search and use it, don’t use if.


void main(){
  minAndMax();

}
void minAndMax(){
  double num1, num2, num3;
  print('enter the three number to be checked: \n');
  num1 = double.parse(stdin.readLineSync()!);
  num2 = double.parse(stdin.readLineSync()!);
  num3 = double.parse(stdin.readLineSync()!);

  double min = num1 < num2 ? (num1 < num3 ? num1 : num3) : (num2 < num3 ? num2 : num3);
  double max = num1 > num2 ? (num1 > num3 ? num1 : num3) : (num2 > num3 ? num2 : num3);

  print('the minimum number is $min');
  print('the maximum number is $max');

}
*/

// 6
/*
what is the value of x, y, z and w  (solve it in text file or using comments in dart file)
int  x=3;
int  y=2;
int  z=x++;
int  w=++y;


x=4
y=2
w=3
z=3
 */

// 7
/*
Create a program that asks the user to enter their name and their age. Print out a
message that tells how many years they have to be 100 years old.

void main(){
  print('enter your name: \n');
  String name = stdin.readLineSync()!;
  print('enter your age: \n');
  int age = int.parse(stdin.readLineSync()!);
  int yearsTo100 = 100 - age;
  print('hello $name, you have to be 100 years old in $yearsTo100 years');
}
*/

// 8
/*
Write a program that prompts the user to enter the grade for student and show up a
message for him
1-if he gets A write  Excellent
2-if he gets B write Outstanding
3- if he gets C write Good
4-if he gets D write Can Do Better
5- if he gets f write Failed !
if user entered another grade write invalid grade

void main() {
  print('enter your grade: \n');
  String grade = stdin.readLineSync()!;
  switch (grade) {
    case 'A':
      print('Excellent');
      break;
    case 'B':
      print('Outstanding');
      break;
    case 'C':
      print('Good');
      break;
    case 'D':
      print('Can Do Better');
      break;
    case 'F':
      print('Failed');
      break;
    default:
      print('invalid grade');
      break;
  }
}
*/

// 9
/*
(Compute the volume of a cylinder) Write a program that reads in the radius
and length of a cylinder and computes the area and volume using the following
formulas:
area = radius * radius * pi
volume = area * length

void main(){
  print('enter the radius of the cylinder: \n');
  double radius = double.parse(stdin.readLineSync()!);
  print('enter the length of the cylinder: \n');
  double length = double.parse(stdin.readLineSync()!);
  double area = radius * radius * 3.14;
  double volume = area * length;
  print('the area of the cylinder is $area');
  print('the volume of the cylinder is $volume');
}
*/


// 10
/*
Write a program that prompts the user to enter an integer
and check if this number is negative or zero or positive  show up a massage with its
sign



void main (){
  print('enter the number to be checked: \n');
  int num = int.parse(stdin.readLineSync()!);
  if (num < 0) {
    print('the number is negative');
  } else if (num == 0) {
    print('the number is zero');
  } else {
    print('the number is positive');
  }
}
*/


