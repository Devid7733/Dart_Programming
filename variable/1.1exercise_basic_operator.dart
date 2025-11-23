void main(List<String> args) {
  int allApples = 47;
  int boxCapacity = 8;
  int fullBox = allApples ~/ boxCapacity;
  int leftApple = allApples % boxCapacity;
  print('I have $allApples apples.');
  print('I can fill $fullBox boxes.');
  print('I will have $leftApple apples left over.');
}
