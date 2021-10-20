import 'dart:io';

void main(){


//Input


print("ingrese la distancia inicial");
var xis = stdin.readLineSync();
print("ingrese la velocidad inicial");
var vis = stdin.readLineSync();
print("ingrese el tiempo");
var ts = stdin.readLineSync();
print("ingrese la aceleracion");
var as = stdin.readLineSync();

  double x = 0;
 // double tempx1 = 0;
 // double tempx2 = 0;
 // double tempx3 = 0;

  //xi
  double xi = double.parse("$xis");

  //Vi
  double vi = double.parse("$vis");

  //T
  double t = double.parse("$ts");

  //a
  double a = double.parse("$as");
 
 
 // tempx1 = t*t;
 // tempx2 = 1/2*a; 
//  tempx3 = xi+vi*t;
 // x = tempx3+tempx2*tempx1;

 x = xi+vi*t+(1/2)*a*(t*t);

  print("la distancia es $x");
  

  //print("Hola mundo");

}
//  xi+vi*t+1/2*a*(t*t);