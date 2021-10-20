import 'dart:io';

void main(){


//Input


print("ingrese la velocidad final");
var vfs = stdin.readLineSync();
print("ingrese el tiempo");
var ts = stdin.readLineSync();
print("ingrese la aceleracion");
var as = stdin.readLineSync();

  double x = 0;
 // double tempx1 = 0;
 // double tempx2 = 0;
 // double tempx3 = 0;

  //xi
  double vf = double.parse("$vfs");

  //T
  double t = double.parse("$ts");

  //a
  double a = double.parse("$as");
 
 
 // tempx1 = t*t;
 // tempx2 = 1/2*a; 
//  tempx3 = xi+vi*t;
 // x = tempx3+tempx2*tempx1;

 x = vf*t+(1/2)*a*(t*t);

  print("la distancia es $x");
  

  //print("Hola mundo");

}
//  xi+vi*t+1/2*a*(t*t);