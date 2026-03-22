import 'dart:io';

void main() {

  stdout.write("Write a number -> ");
  String? num = stdin.readLineSync()!;

  check(num);

}

void check(input) {
  
  List<String> numbers = ["6", "28", "496", "8128"];

  if(numbers.contains(input)) {
    print("Perfect Number");
  } else {
    print("Unperfect Number");
  }

}