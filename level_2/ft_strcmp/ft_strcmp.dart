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
  edgeCaseHandler handler = edgeCaseHandler();
  handler.caseOneIsEmpty(s1, s2);
  handler.caseOneIsShorter(s1, s2, i);
  return (handler.result);
}

// Create a class to orgazine and refactor the mess of the Edge cases above:
class edgeCaseHandler {
  int result = 0;
  caseOneIsEmpty(String s1, String s2) {
    if (s1.isEmpty && s2.isEmpty)
      this.result = 0;
    else if (s1.isEmpty)
      this.result = -1;
    else if (s2.isEmpty) this.result = 1;
  }

  caseOneIsShorter(String s1, String s2, int i) {
    if (s1.isEmpty || s2.isEmpty) return;
    if (s1.length > s2.length) {
      if (s1.codeUnitAt(i) > s2.codeUnitAt(i - 1))
        this.result = 1;
      else if (s1.codeUnitAt(i) < s2.codeUnitAt(i - 1)) {
        this.result = -1;
      }
    } else if (s1.length < s2.length) {
      if (s1.codeUnitAt(i - 1) > s2.codeUnitAt(i))
        this.result = 1;
      else if (s1.codeUnitAt(i - 1) < s2.codeUnitAt(i)) {
        this.result = -1;
      }
    }
  }
}

//tests:
void main() {
  print(ft_strcmp("abc", "abc"));
  print(ft_strcmp("abc", "abd"));
  print(ft_strcmp("", "abc"));
  print(ft_strcmp("abc", ""));
  print(ft_strcmp("", ""));
  print(ft_strcmp("abc", "zzz"));
  print(ft_strcmp("abc", "ab"));
  print(ft_strcmp("ab", "abc"));
}
