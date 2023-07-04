void main(List<String> args) {
  String input;
  // String output1;
  String output2;
  if (args.length != 1) {
    print('');
    return;
  }

  input = args[0].trim();
  if (input.isEmpty) {
    print('');
    return;
  }

  // output1 = getFirstWord1(input);
  output2 = getFirstWord2(input);
  // print(output1);
  print(output2);
}

// // without regex:
// String getFirstWord1(String input) {
//   int firstWordEnd = 0;
//   while (firstWordEnd < input.length && !input[firstWordEnd].trim().isEmpty) {
//     firstWordEnd++;
//   }
//
//   String firstWord = input.substring(0, firstWordEnd);
//   return (firstWord);
// }

// with regex:
String getFirstWord2(String input) {
  List<String> split = input.split(RegExp(r'\s'));
  return (split[0]);
}
