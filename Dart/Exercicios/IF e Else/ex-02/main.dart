import 'dart:io';

void main() {

  stdout.write("Payment -> ");
  double? before = double.parse(stdin.readLineSync()!);

  if (before <= 280) {
    double after = before * 1.20;
    print("Before: $before, Increase: 20%, After: $after");
  } else if (before > 280 && before <= 700) {
    double after = before * 1.15;
    print("Before: $before, Increase: 15%, After: $after");
  } else if (before > 700 && before <= 1500) {
    double after = before * 1.10;
    print("Before: $before, Increase: 10%, After: $after");
  } else if (before > 1500) {
    double after = before * 1.05;
    print("Before: $before, Increase: 5%, After: $after");
  } else {
    print("Invalid payment!");
  }

}