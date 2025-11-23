/*
Loop control flow structure that you can execute a block of code repraedtly. Dart offer server type of loops

for (var item in collection)

Loop Control Statement : break and continue
*/
void main(List<String> args) {
  for (int i = 1; i <= 5; i++) {
    print("Numbers: $i");
  }

  var fruits = ['Apple', 'Banana'];
  for (var fruit in fruits) {
    print(fruit);
  }
  int countDown = 3;
  while (countDown > 0) {
    print("Countdown: $countDown");
    countDown--;
  }

  for (int i = 1; i <= 10; i++) {
    if (i % 2 == 0) {
      continue;
    }
    print("Odd Number: $i");
  }
}
