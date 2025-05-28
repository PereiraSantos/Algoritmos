import 'dart:math';

void main(List<String> args) {
  List<int> pesos = [1, 3, 4];
  List<int> valores = [1500, 2000, 3000];
  int capacidade = 4;

  int tamanho = pesos.length;

  List<List<int>> matriz = List.generate(tamanho + 1, (_) => List.filled(capacidade + 1, 0));

  for (int i = 1; i <= tamanho; i++) {
    for (int j = 1; j <= capacidade; j++) {
      int pesoAtual = pesos[i - 1];
      int valorAtual = valores[i - 1];

      if (pesoAtual > j) {
        matriz[i][j] = matriz[i - 1][j];
      } else {
        matriz[i][j] = max(matriz[i - 1][j], valorAtual + matriz[i - 1][j - pesoAtual]);
      }
    }
  }

  int valorFinal = matriz[tamanho][capacidade];

  print(valorFinal);
}
