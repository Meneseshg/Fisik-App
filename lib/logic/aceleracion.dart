import 'dart:io';

void main(){


//Input

print("ingrese el tiempo inicial");
var tis = stdin.readLineSync();
print("ingrese el tiempo final");
var tfs = stdin.readLineSync();
print("ingrese la velocidad inicial");
var vis = stdin.readLineSync();
print("ingrese la velocidad final");
var vfs = stdin.readLineSync();

  double a = 0;

  //Ti
 
  double ti = double.parse("$tis");

  //Tf
  double tf = double.parse("$tfs");

  //Vi
  double vi = double.parse("$vis");

  //Vf
  double vf = double.parse("$vfs");
 
 
  a = (vf-vi)/(tf-ti);

  print("la aceleración es $a m/s^2");

}