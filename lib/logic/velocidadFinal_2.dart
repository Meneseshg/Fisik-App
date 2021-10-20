import 'dart:io';
import 'dart:math';
void main(){
  //Input

print("ingrese la velocidad inicial");
var vis = stdin.readLineSync();
print("ingrese la aceleración");
var as = stdin.readLineSync();
print("ingrese la distancia");
var xs = stdin.readLineSync();

double vf2 = 0;
double vf2r = 0;

  //Vi
  double vi = double.parse("$vis");

  //a
  double a = double.parse("$as");

  //T
  double x = double.parse("$xs");


 
 
  vf2 = (vi*vi)+2 *a*x;
  vf2r = sqrt(vf2);

  print("La velocidad es $vf2r");

}