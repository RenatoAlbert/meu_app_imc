import 'package:meu_app_calculadora/funcoes/funcoes.dart' as funcoes;

void main(List<String> arguments) {
  print("Bem vindo ao sistema de calculo IMC!");

  var peso = funcoes.lerConsoleDouble("Digite seu Peso: ");

  var altura = funcoes.lerConsoleDouble("Digite sua Altura");

  funcoes.calcularIMC(peso, altura);

  print("");
}
