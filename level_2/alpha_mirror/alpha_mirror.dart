void main(List<String> args) {
  String input = args[0];
  StringBuffer result_str = StringBuffer();
  if (args.length != 1) {
    print('');
    return;
  }

  for (int i = 0; i < input.length; i++) {
    int charCode = input.codeUnitAt(i);
    if (isUpper(charCode)) {
      result_str.writeCharCode(90 - (charCode - 65));
    } else if (isLower(charCode)) {
      result_str.writeCharCode(122 - (charCode - 97));
    } else {
      result_str.writeCharCode(charCode);
    }
  }

  print(result_str);
}

bool isUpper(int ascii) {
  return (ascii >= 65 && ascii <= 90);
}

bool isLower(int ascii) {
  return (ascii >= 97 && ascii <= 122);
}
