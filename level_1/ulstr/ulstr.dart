import 'dart:io';

void main(List<String> args) {
  if (args.length != 1) {
    print("");
    return;
  }

  String userString = args[0];
  for (int i = 0; i < userString.length; i++) {
    if (isUpper(userString[i]))
      stdout.write(userString[i].toLowerCase());
    else if (isLower(userString[i])) {
      stdout.write(userString[i].toUpperCase());
    } else {
      stdout.write(userString[i]);
    }
  }
  stdout.write('\n');
}

bool isUpper(String str) {
  int ascii = str.codeUnitAt(0);
  return (ascii >= 65 && ascii <= 90);
}

bool isLower(String str) {
  int ascii = str.codeUnitAt(0);
  return (ascii >= 97 && ascii <= 122);
}
