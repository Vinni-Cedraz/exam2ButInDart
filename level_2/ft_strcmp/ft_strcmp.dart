int ft_strcmp(String s1, String s2) {
  int i = 0;
  while ((i < s1.length) && (i < s2.length)) {
    if (s1.codeUnitAt(i) > s2.codeUnitAt(i))
      return (1);
    else if (s2.codeUnitAt(i) > s1.codeUnitAt(i)) {
      return (-1);
    }
    i++;
  }
  if (s1.isEmpty && s2.isEmpty)
    return (0);
  else if (s1.isEmpty)
    return (-1);
  else if (s2.isEmpty) return (1);
  if (s1.length > s2.length) {
    if (s1.codeUnitAt(i) > s2.codeUnitAt(i - 1))
      return (1);
    else if (s1.codeUnitAt(i) < s2.codeUnitAt(i - 1)) {
      return (-1);
    }
  } else if (s1.length < s2.length) {
    if (s1.codeUnitAt(i - 1) > s2.codeUnitAt(i))
      return (1);
    else if (s1.codeUnitAt(i - 1) < s2.codeUnitAt(i)) {
      return (-1);
    }
  }
  return (0);
}

//tests:
void main() {
  print(ft_strcmp("abc", "abc"));
  print(ft_strcmp("abc", "abd"));
  print(ft_strcmp("abc", "zzz"));
  print(ft_strcmp("abc", "ab"));
  print(ft_strcmp("ab", "abc"));
  print(ft_strcmp("", "abc"));
  print(ft_strcmp("abc", ""));
  print(ft_strcmp("", ""));
}
