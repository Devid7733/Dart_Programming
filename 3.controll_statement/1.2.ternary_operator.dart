void main(List<String> args) {
  int batterylevel = 15;
  String batterystatus = batterylevel <= 20 ? 'Low Battery' : "Battery is Fine";
  print(batterystatus);
  print(
    "The user is ${batterystatus == 'Low Battery' ? 'Able to continue' : 'advise to charge'}",
  );
}
