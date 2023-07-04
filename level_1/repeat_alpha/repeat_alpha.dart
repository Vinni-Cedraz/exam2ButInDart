import 'dart:io';

// stupid way:
// void main(List<String> args) {
//   if (args.length != 1) {
//     print("");
//     return;
//   }
//
//   for (int i = 0; i < args[0].length; i++) {
//     int asciiValue;
//     int repeats;
//
//     if (args[0][i].compareTo(args[0][i].toUpperCase()) == 0) {
//       asciiValue = args[0][i].codeUnitAt(0);
//       repeats = asciiValue - 64;
//     } else if (args[0][i].compareTo(args[0][i].toLowerCase()) == 0) {
//       asciiValue = args[0][i].codeUnitAt(0);
//       repeats = asciiValue - 96;
//     } else {
//       repeats = 1;
//     }
//
//     for (int j = 0; j < repeats; j++) {
//       stdout.write(args[0][i]);
//     }
//   }
// }

//smart way:
void main(List<String> args) {
  if (args.length != 1) {
    print("");
    return;
  }

  String str = 'abcdefghijklmnopqrstuvwxyz';

  for (int i = 0; i < args[0].length; i++) {
    int index = str.indexOf(args[0][i].toLowerCase());
    for (int j = 1; j <= index + 1; j++) stdout.write(args[0][i]);
  }
}
