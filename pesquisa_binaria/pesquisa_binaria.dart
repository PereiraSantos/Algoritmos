void main() {
  var lista = new List<int>.generate(1000000, (i) => i + 1);
  var r = pesquisaBinaria(lista, 1);
  print(lista[r]);
}

pesquisaBinaria(List<int> list, int item) {
  int baixo = 0;
  int alto = list.length - 1;

  while (baixo <= alto) {
    int meio = (baixo + alto) ~/ 2;
    int chute = list[meio.toInt()];

    if (chute == item) return meio;
    if (chute > item) {
      alto = meio - 1;
    } else {
      baixo = meio + 1;
    }
  }

  return null;
}
