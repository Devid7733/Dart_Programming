import 'dart:io';

void main(List<String> args) {
  stdout.write("How much money did you spend today?: \$");
  String? moneyInputString = stdin.readLineSync();
  if (moneyInputString == null) {
    throw Exception('Input must not be null');
  }
  int moneySpent = int.parse(moneyInputString);
  print("You spent \$ $moneySpent");
  switch (moneySpent) {
    case >= 500:
      print("Your status: VIP");
      break;
    case >= 200:
      print("Your status: Gold");
      break;
    case >= 100:
      print("Your status: Silver");
      break;
    default:
      print("Your status: Regular Member");
  }
}
