import 'dart:io';

void main() {
//Input

  print("ingrese la velocidad inicial");
  var vis = stdin.readLineSync();
  print("ingrese la velocidad final");
  var vfs = stdin.readLineSync();
  print("ingrese el tiempo");
  var ts = stdin.readLineSync();

  double x = 0;

  //Vi

  double vi = double.parse("$vis");

  //Vf
  double vf = double.parse("$vfs");

  //T
  double t = double.parse("$ts");

  x = (vf - vi) / 2 * t;

  print("la distancia es $x");
}
