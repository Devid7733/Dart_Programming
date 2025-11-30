import 'dart:io';

List<double> wallet = [];

Future<void> main(List<String> args) async {
  print("--------- Cloud WALLET MANAGER (Async Mode) ----------");
  await runWalletManager();
  print("--------- Program is end ----------");
}

Future<void> runWalletManager() async {
  while (true) {
    stdout.write("Command (add, undo, list, exit): ");
    String? input = stdin.readLineSync();

    if (input == null || input.trim().isEmpty) {
      print("⚠️ Invalid command!");
      continue;
    }

    switch (input.trim().toLowerCase()) {
      case "add":
        await addTransaction();
        break;

      case "undo":
        undoTransaction();
        break;

      case "list":
        listTransactions();
        break;

      case "exit":
        exitProgram();
        return;

      default:
        print("⚠️ Unknown command!");
    }
  }
}

Future<void> addTransaction() async {
  stdout.write("Enter amount: ");
  String? value = stdin.readLineSync();

  if (value == null || value.trim().isEmpty) {
    print("⚠️ No amount entered.");
    return;
  }

  double amount = double.parse(value);

  // Simulate cloud saving delay
  print("⏳ Saving to cloud...");
  await Future.delayed(Duration(seconds: 2));
  wallet.add(amount);
  print("✔️ Done! (Saved \$$amount)");
}

void undoTransaction() {
  if (wallet.isEmpty) {
    print("⚠️ No transaction to undo.");
  } else {
    double removed = wallet.removeLast();
    print("↩️ Undo: Removed \$$removed");
  }
}

void listTransactions() {
  print("📌 Current Transactions: $wallet");
}

void exitProgram() {
  print("\n--- Final Summary ---");

  double total = wallet.fold(0, (sum, amount) => sum + amount);
  print("Total Spent: \$$total");

  if (total > 500) {
    print("⚠️ Over Budget!");
  } else {
    print("✅ Within Budget");
  }

  print("Goodbye!");
}
