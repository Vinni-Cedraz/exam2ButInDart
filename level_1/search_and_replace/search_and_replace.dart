void main(List<String> args) {
  if (args.length != 3) {
    print("");
    return;
  }

  String str = args[0];
  String search = args[1];
  String replace = args[2];

  if (!str.contains(search)) {
    print(str);
    return;
  }

  String replaced = str.replaceAll(search, replace);
  print(replaced);
}
