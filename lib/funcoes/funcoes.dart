import 'dart:convert';
import 'dart:io';

String lerConsole(String texto) {
  print(texto);
  var lerTexto = stdin.readLineSync(encoding: utf8);
  return lerTexto ?? "";
}

dynamic lerConsoleDouble(String texto) {
  var lerDouble = double.tryParse(lerConsole(texto));
  if (lerDouble == null) {
    print("Número informado incorreto, alterando para Zero");
    return 0.0;
  } else {
    return lerDouble;
  }
}

void calcularIMC(double peso, double altura) {
  var imc = peso / (altura * altura);
  print("Seu Indice de Massa Corporal é: $imc");
  print("Status De saúde com base no IMC:");
  if (imc < 16) {
    print("Magreza Grave");
  } else if (imc >= 16 && imc < 17) {
    print("Magreza Moderada");
  } else if (imc >= 17 && imc < 18.5) {
    print("Magreza Leve");
  } else if (imc >= 18.5 && imc < 25) {
    print("Saudável");
  } else if (imc >= 25 && imc < 30) {
    print("Sobrepeso");
  } else if (imc >= 30 && imc < 35) {
    print("Obesidade Grau I");
  } else if (imc >= 35 && imc < 40) {
    print("Obesidade Grau II (Severa)");
  } else if (imc >= 40) {
    print("Obesidade Grau III (Mórbita)");
  }
}
