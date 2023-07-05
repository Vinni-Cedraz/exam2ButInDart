// Copilot conversation:
//q: how do I turn a string "<number>" into an int <number> in Dart?
//a: use int.parse(<string>)
//q: is .parse() a method of the int class?
//a: yes
//q: how is it possible to access a method of a type "int" without having to
//   reference an instantiated object in order to access it's method instead?
//a: because it's a static method. A static method is a method that is not associated
//   with any instance of a class. Instead, the method is associated with the class itself.

void main(List<String> args) {
  if (args.length != 3) {
    print("");
    return;
  }

  int firstNumber = int.parse(args[0]);
  String operator = args[1];
  int secondNumber = int.parse(args[2]);

  int result = performOperation(operator, firstNumber, secondNumber);
  print(result);
}

int performOperation(String operator, int firstNumber, int secondNumber) {
  switch (operator) {
    case "+":
      return (firstNumber + secondNumber);
    case "-":
      return (firstNumber - secondNumber);
    case "*":
      return (firstNumber * secondNumber);
    case "/":
      return (firstNumber ~/ secondNumber);
    case "%":
      return (firstNumber % secondNumber);
    default:
      return (0);
  }
}
