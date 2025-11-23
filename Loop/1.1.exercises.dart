import 'dart:io';

void main(List<String> args) {
  int total = 0;
  List<int> items = [];

  do {
    stdout.write("Enter price (0 to finish): ");
    String? numInput = stdin.readLineSync()!;
    int result = int.parse(numInput);

    if (result == 0) {
      print("\n--- Receipt ---");
      for (int i = 0; i < items.length; i++) {
        print("Item ${i + 1}: \$${items[i]}");
      }
      print("Total: \$${total}");
      break;
    }

    items.add(result);
    total += result;
  } while (true);
}
