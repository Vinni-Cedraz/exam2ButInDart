// import 'dart:io';

int ft_atoi(String str) {
  int sign = 1;
  StringBuffer strResult = StringBuffer();
  String tmp;
  strResult.write(str.trim());
  if (strResult.toString()[0] == '-' || strResult.toString()[0] == '+') {
    if (strResult.toString()[0] == '-') {
      tmp = strResult.toString().replaceFirst('-', '');
      sign = -1;
    } else {
      tmp = strResult.toString().replaceFirst('+', '');
    }
    strResult.clear();
    strResult.write(tmp);
  }
  RegExp regex = RegExp(r'[^0-9]');
  if (regex.hasMatch(strResult.toString())) {
    int i = 0;
    String tmp = strResult.toString();
    strResult.clear();
    while (!regex.hasMatch(tmp[i])) {
      strResult.write(tmp[i]);
      i++;
    }
  }
  if (strResult.isEmpty) return (0);
  int result = (sign == -1)
      ? -int.parse(strResult.toString())
      : int.parse(strResult.toString());
  return (result);
}

// void main() {
//   stdout.write("+42: ");
//   print(ft_atoi("+42"));
//   print("expected: 42");
//   stdout.write("42: ");
//   print(ft_atoi("42"));
//   print("expected: 42");
//   stdout.write("-42: ");
//   print(ft_atoi("-42"));
//   print("expected: -42");
//   stdout.write("0: ");
//   print(ft_atoi("0"));
//   print("expected: 0");
//   stdout.write("4a2: ");
//   print(ft_atoi("4a2"));
//   print("expected: 4");
//   stdout.write("42a43: ");
//   print(ft_atoi("42a43"));
//   print("expected: 42");
//   stdout.write("2147483647: ");
//   print(ft_atoi("2147483647"));
//   print("expected: 2147483647");
//   stdout.write("a42 :");
//   print(ft_atoi("a42"));
//   print("expected: 0");
//   stdout.write("-a42: ");
//   print(ft_atoi("-a42"));
//   print("expected: 0");
//   stdout.write("+-42: ");
//   print(ft_atoi("+-42"));
//   print("expected: 0");
//   stdout.write("  \\t\\n\\r\\v\\f42:  ");
//   print(ft_atoi("  \t\n\r\v\f42"));
//   print("expected: 42");
//   stdout.write("9223372036854775807: ");
//   print(ft_atoi("9223372036854775807"));
//   print("expected: 9223372036854775807");
//   // There are not overflows in Dart, so the following tests should result in
//   // elegant error messages, not overflows:
//   // print(ft_atoi("-9223372036854775808"));
//   // print(ft_atoi("9223372036854775808"));
//   // print(ft_atoi("-9223372036854775809"));
// }
