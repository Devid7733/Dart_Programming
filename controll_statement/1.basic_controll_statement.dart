/*
Control flow statements allow you to manage the order in which your program's code.
is executed. the most fundamental decision-making tool is the if statement. it executes a block of code only if a specific condition evalutes is true.
*/
import 'dart:io';

void main(List<String> args) {
  int ageInputArgs;
  stdout.write('Enter your age: ');
  String? ageInputString = stdin.readLineSync();
  if (ageInputString == null) {
    throw Exception('Input must not be null');
  }
  ageInputArgs = int.parse(ageInputString);
  if (ageInputArgs >= 18) {
    print('You are eligible to vote.');
  } else {
    print('You are not eligible to vote yet.');
  }
}
