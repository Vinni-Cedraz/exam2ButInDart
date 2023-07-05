int ft_atoi(String str) {
  StringBuffer result = StringBuffer();

  // do a regex to see if there is any non numeric char in the string:
  RegExp regex = RegExp(r'[^0-9]');
  if (regex.hasMatch(str)) {
    int i = 0;
    while (!regex.hasMatch(str[i])) {
      result.write(str[i]);
      i++;
    }
  } else
    result.write(str);
  return(int.parse(result.toString()));
}

// seems like int.parse() doesnt work with negative numbers...
// tests
void main() {
  print(ft_atoi("42"));
  print(ft_atoi("-42"));
  print(ft_atoi("0"));
  print(ft_atoi("2147483647"));
  // print(ft_atoi("-2147483648"));
  print(ft_atoi("2147483648"));
  // print(ft_atoi("-2147483649"));
  print(ft_atoi("9223372036854775807"));
  // print(ft_atoi("-9223372036854775808"));
  // print(ft_atoi("9223372036854775808"));
  // print(ft_atoi("-9223372036854775809"));
  // print(ft_atoi("42a43"));
  // print(ft_atoi("4a2"));
  // print(ft_atoi("a42"));
  // print(ft_atoi("-a42"));
  // print(ft_atoi("+42"));
  // print(ft_atoi("+-42"));
  // print(ft_atoi("++42"));
  // print(ft_atoi("--42"));
  // print(ft_atoi("-+42"));
  // print(ft_atoi("   42"));
  // print(ft_atoi("  \t\n\r\v\f42"));
  // print(ft_atoi("42 "));
}
