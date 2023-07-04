// coisa linda do pai
void main(List<String> args) {
  if (args.length != 1) {
    print("");
    return;
  }
  print(args[0].split('').reversed.join(''));
}
