import 'dart:io';

void main() {
  print('===== Simple Calculator =====');

  // First number input
  stdout.write('Enter first number: ');
  double num1 = double.parse(stdin.readLineSync()!);

  // Second number input
  stdout.write('Enter second number: ');
  double num2 = double.parse(stdin.readLineSync()!);

  // Operator input
  stdout.write('Enter operator (+, -, *, /): ');
  String op = stdin.readLineSync()!;

  double result;

  // Calculation
  switch (op) {
    case '+':
      result = num1 + num2;
      print('Result = $result');
      break;

    case '-':
      result = num1 - num2;
      print('Result = $result');
      break;

    case '*':
      result = num1 * num2;
      print('Result = $result');
      break;

    case '/':
      if (num2 != 0) {
        result = num1 / num2;
        print('Result = $result');
      } else {
        print('Cannot divide by zero!');
      }
      break;

    default:
      print('Invalid operator!');
  }
}
