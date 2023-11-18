import 'dart:math';

void main() {
  var rng = new Random();
  var lista = new List<int>.generate(100, (_) => rng.nextInt(1000));
  print(ordenaPorIndice(lista));
}

int buscaMenor(List<int> list) {
  int menor = list[0];
  int menorIndice = 0;

  for (var i = 0; i < list.length; i++) {
    if (list[i] < menor) {
      menor = list[i];
      menorIndice = i;
    }
  }

  return menorIndice;
}

List<int> ordenaPorIndice(List<int> list) {
  List<int> novaList = [];

  for (var i = 0; i < list.length; i++) {
    int menor = buscaMenor(list);
    novaList.add(list[menor]);
    list.removeAt(menor);
  }
  return novaList;
}
