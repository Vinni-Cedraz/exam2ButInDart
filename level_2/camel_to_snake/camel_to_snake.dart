void main(List<String> args) {
  if (args.isEmpty) {
    print('');
    return;
  }

  StringBuffer result_str = StringBuffer();
  for (int i = 0; i < args[0].length; i++) {
    if (isUpper(args[0].codeUnitAt(i))) {
      result_str.write("_");
      result_str.write(args[0][i].toLowerCase());
    } else
      result_str.write(args[0][i]);
  }
  print(result_str);
}

bool isUpper(int ascii) {
  return (ascii >= 65 && ascii <= 90);
}
