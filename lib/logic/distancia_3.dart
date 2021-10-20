import 'dart:io';

void main() {
//Input

  print("ingrese la velocidad final");
  var vfs = stdin.readLineSync();
  print("ingrese la velocidad inicial");
  var vis = stdin.readLineSync();
  print("ingrese el tiempo");
  var ts = stdin.readLineSync();

  double x = 0;

  //Ti

  double vf = double.parse("$vfs");

  //Tf
  double vi = double.parse("$vis");

  //Vi
  double t = double.parse("$ts");

  x = (vf - vi) / 2 * t;

  print("la distancia es $x");
}
