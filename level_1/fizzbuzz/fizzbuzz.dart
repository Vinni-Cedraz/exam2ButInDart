import 'dart:io';

void main() {
  for (int i = 0; i <= 100; i++) {
    if (0 == i % 3) {
      stdout.write("fizz");
    }
    if (0 == i % 5) {
      stdout.write("buzz");
    } else if ((0 != i % 3) && (0 != i % 5)) stdout.write(i);
    stdout.write("\n");
  }
}
