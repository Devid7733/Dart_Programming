import 'dart:io';

void main(List<String> args) {
  List<double> wallet = [];
  do {
    print("---Wallet Manager---");
    stdout.write("Command (add, undo, list, exit): ");
    String? optionInput = stdin.readLineSync();
    switch (optionInput) {
      case "add":
        stdout.write("Enter amount: ");
        String? valueInput = stdin.readLineSync()!;
        double addValue = double.parse(valueInput);
        wallet.add(addValue);
        print("Added: \$$addValue");
        break;
      case "undo":
        if (wallet.length == 0) {
          print("ArrayList has no value");
        } else {
          double removed = wallet.removeLast();
          print("Removed: \$$removed");
        }
        break;
      case "list":
        print("$wallet");
        break;
      case "exit":
        print("---Final Summary---");
        double total = 0;
        for (double num in wallet) {
          total += num;
        }
        print("Total Spent: \$$total");
        if (total > 500) {
          print("⚠️ Over Budget!");
        } else {
          print("✅ Within Budget ");
        }
        return;
    }
  } while (true);
}
