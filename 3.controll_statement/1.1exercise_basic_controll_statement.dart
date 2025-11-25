import 'dart:io';

void main(List<String> args) {
  stdout.write("How much money did you spend today?: \$");
  String? moneyInputString = stdin.readLineSync();
  if (moneyInputString == null) {
    throw Exception('Input must not be null');
  }
  int moneySpent = int.parse(moneyInputString);
  print("You spent \$ $moneySpent");
  if (moneySpent >= 500) {
    print("Your status: VIP");
  } else if (moneySpent >= 200) {
    print("Your status: Gold");
  } else if (moneySpent >= 100) {
    print("Your status: Silver");
  } else {
    print("Your status: Regular");
  }
}
