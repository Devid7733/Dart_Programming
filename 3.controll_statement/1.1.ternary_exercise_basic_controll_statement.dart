import 'dart:io';

void main(List<String> args) {
  stdout.write("How much money did you spend today?: \$");
  String? moneyInputString = stdin.readLineSync();
  if (moneyInputString == null) {
    throw Exception('Input must not be null');
  }
  int moneySpent = int.parse(moneyInputString);
  print("You spent \$ $moneySpent");
  print(
    "Status: ${moneySpent >= 500
        ? 'VIP'
        : moneySpent >= 200
        ? 'Gold'
        : moneySpent >= 100
        ? 'Silver'
        : 'Regular'}",
  );
}
