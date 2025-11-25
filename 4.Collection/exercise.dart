void main(List<String> args) {
  List<String> features = [];
  print("Empty ArrayList: $features");
  features.addAll(["Dark Mode", "Push Notification", "Chat Support"]);
  print("After added: $features");
  features.insert(0, "Login Screen");
  print("The CEO calls $features");
  features.remove("Chat Support");
  print("The Team calls $features");
  features.sort();
  print("Sort:  $features");
  print("First Feature: ${features.first}");
  print("Last Feature: ${features.last}");
  print("Total Count: ${features.length}");
}
