import 'dart:io';

void main(List<String> args) {
  if (args.length != 1) {
    print("");
    return;
  }

  String strUpper = "ABCDEFGHIJKLMNOPQRSTUVXWYZ";
  String strLower = "abcdefghijklmnopqrstuvxwyz";
  for (int i = 0; i < args[0].length; i++) {
    if (isUpper(args[0][i]))
      stdout.write(strUpper[(strUpper.indexOf(args[0][i]) + 13) % 26]);
    else if (isLower(args[0][i]))
      stdout.write(strLower[(strLower.indexOf(args[0][i]) + 13) % 26]);
    else
      stdout.write(args[0][i]);
  }
}

bool isUpper(String str) {
  int ascii = str.codeUnitAt(0);
  return (ascii >= 65 && ascii <= 90);
}

bool isLower(String str) {
  int ascii = str.codeUnitAt(0);
  return (ascii >= 97 && ascii <= 122);
}
