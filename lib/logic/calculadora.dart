import 'dart:io';
import 'dart:math';

void main() {
//Input

  double resultado = 0;

  print("que operacion desea realizar [+,-, *, /, rz]");
  var descicion = stdin.readLineSync();

  if (descicion == "+") {
    print("ingrese el primer numero que desea sumar");
    var n1 = stdin.readLineSync();
    print("ingrese el segundo numero que desea sumar");
    var n2 = stdin.readLineSync();

    double n11 = double.parse("$n1");
    double n22 = double.parse("$n2");

    resultado = n11 + n22;

    print(resultado);
  } else if (descicion == "-") {
    print("ingrese el primer numero que desea restar");
    var n1 = stdin.readLineSync();
    print("ingrese el segundo numero que desea restar");
    var n2 = stdin.readLineSync();

    double n11 = double.parse("$n1");
    double n22 = double.parse("$n2");

    resultado = n11 - n22;

    print(resultado);
  } else if (descicion == "*") {
    print("ingrese el primer numero que desea multiplicar");
    var n1 = stdin.readLineSync();
    print("ingrese el segundo numero que desea multiplicar");
    var n2 = stdin.readLineSync();

    double n11 = double.parse("$n1");
    double n22 = double.parse("$n2");

    resultado = n11 * n22;

    print(resultado);
  } else if (descicion == "/") {
    print("ingrese el numero que desea dividir");
    var n1 = stdin.readLineSync();
    print("ingrese el numero por el que desea dividir");
    var n2 = stdin.readLineSync();

    double n11 = double.parse("$n1");
    double n22 = double.parse("$n2");

    resultado = n11 / n22;

    print(resultado);
  } else if (descicion == "rz") {
    print("ingrese el numero al que le desea sacar raiz");
    var n1 = stdin.readLineSync();

    double n11 = double.parse("$n1");

    resultado = sqrt(n11);

    print(resultado);
  } else {
    print("la opcion seleccionada no es valida");
  }
}
