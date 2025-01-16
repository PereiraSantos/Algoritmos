import 'dart:math';

void main() {
  List<String> alfabeto = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'];

  print(ordenaPorTamanho(nomes(15, alfabeto)));
}

List<String> nomes(int quantidade, List<String> alfabeto) {
  List<String> list = [];

  for (var i = 0; i < quantidade; i++) {
    list.add(nome(alfabeto));
  }
  return list;
}

String nome(List<String> list) {
  String nome = '';

  for (var i = 0; i < Random().nextInt(20) + 5; i++) {
    nome += list[new Random().nextInt(list.length)];
  }
  return nome;
}

List<String> ordenaPorTamanho(List<String> list) {
  List<String> novaList = [];

  for (var i = 0; i < list.length; i++) {
    int menor = buscaMenor(list);
    novaList.add(list[menor]);
    list.removeAt(menor);
  }
  return novaList;
}

int buscaMenor(List<String> list) {
  int menor = list[0].length;
  int menorIndice = 0;

  for (var i = 0; i < list.length; i++) {
    if (list[i].length < menor) {
      menor = list[i].length;
      menorIndice = i;
    }
  }

  return menorIndice;
}
