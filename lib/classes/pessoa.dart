class pessoa {
  String _nome = "";
  String _peso = "";
  String _altura = "";

  void setNome(String nome) {
    _nome = nome;
  }

  void setPeso(String peso) {
    _peso = peso;
  }

  void setAltura(String altura) {
    _altura = altura;
  }

  String getNome() {
    return _nome;
  }

  String getPeso() {
    return _peso;
  }

  String getAltura() {
    return _altura;
  }
}

double calcularIMC(double peso, double altura) {
  var imc = altura * altura / peso;
  return imc;
}
