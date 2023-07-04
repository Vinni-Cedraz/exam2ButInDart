import 'dart:io';

// This is an interesting one since there is not such a thing as the pointer
// variable or even passing a variable by reference in Dart so there is no
// direct equivalence to the int *a and int *b in the ft_swap signature.
// Therefore, to have an ft_swap function that behaves similarly we can use Objects:
// -> swapping the values of objects instantiated in the main function (as
// long as the values are ints I think it corresponds to the same idea)

// void main() {
//   IntHolder a;
//   IntHolder b;
//
//   a = IntHolder(10);
//   b = IntHolder(5);
//   print_ab(a.value, b.value);
//   ft_swap(a, b);
//   print_ab(a.value, b.value);
// }

class IntHolder {
  int value;

  IntHolder(this.value);
}

void ft_swap(IntHolder a, IntHolder b) {
  int tmp = a.value;
  a.value = b.value;
  b.value = tmp;
}

void print_ab(int a, int b) {
  stdout.write("a: ");
  print(a);
  stdout.write("b: ");
  print(b);
}
