import 'dart:io';

void main() {

  stdout.write("Digite um número -> ");
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write("Digite outro número -> ");
  int num2 = int.parse(stdin.readLineSync()!);

  if (num1 > num2) {
    print("$num1 é maior que $num2!");
  } else if (num2 > num1) {
    print("$num2 é maior que $num1!");
  } else {
    print("Os dois números são iguais!");
  }

}