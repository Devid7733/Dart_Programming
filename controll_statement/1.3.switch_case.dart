/*
switch statment evalutes an expression and compare its value against a series of case closes/ 
*/

enum EnumColor { green, yellow, red }

void main(List<String> args) {
  //final colorString = "Yellow";
  EnumColor enumColor = EnumColor.green;
  switch (enumColor) {
    case EnumColor.green:
      print("You can go.");
      break;
    case EnumColor.yellow:
      print("Becareful");
      break;
    case EnumColor.red:
      print("Please stop!");
      break;
    default:
      print("Error!");
  }
  int mygrade = 80;
  print("Your grade : ${getGrade(mygrade)}");
}

String getGrade(int score) {
  switch (score) {
    case >= 90:
      return "Grade A";
    case >= 80:
      return "Grade B";
    case >= 70:
      return "Grade C";
    case >= 60:
      return "Grade D";
    case >= 50:
      return "Grade E";
    default:
      return "You are fail.";
  }
}
