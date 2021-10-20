import 'dart:io';
void main(){
  //Input

print("ingrese la velocidad inicial");
var vis = stdin.readLineSync();
print("ingrese la aceleración");
var as = stdin.readLineSync();
print("ingrese el tiempo");
var ts = stdin.readLineSync();

double vf = 0;

  //Vi
  double vi = double.parse("$vis");

  //a
  double a = double.parse("$as");

  //T
  double t = double.parse("$ts");


 
 
  vf = vi+a*t;

  print("La velocidad es $vf");

}