import 'dart:io';

void main() {

  stdout.write("Sua idade -> ");
  int? num = int.parse(stdin.readLineSync()!);

  check(num);

}

void check(input) {

  if(input >= 5 && input <= 7) {
    print("Infantil A");
  } else if (input >= 8 && input <= 10) {
    print("Infantil B");
  } else if (input >= 11 && input <= 13) {
    print("Juvenil A");
  } else if (input >= 14 && input <= 17) {
    print("Juvenil B");
  } else if (input >= 18) {
    print("Adulto");
  } else {
    print("Ou muito novo, ou Idade Invalida");
  }

}