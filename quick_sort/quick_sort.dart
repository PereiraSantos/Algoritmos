import 'dart:math';

void main() {
  var rng = new Random();
  var lista = new List<int>.generate(100, (_) => rng.nextInt(1000));
  print(quickSort(lista));
}

quickSort(List<int> list) {
  if (list.length < 2) {
    return list;
  } else {
    int pivo = list[0];
    List<int> menores = [];
    List<int> maiores = [];

    for (var i = 1; i < list.length; i++) {
      if (list[i] <= pivo) menores.add(list[i]);
    }

    for (var i = 1; i < list.length; i++) {
      if (list[i] > pivo) maiores.add(list[i]);
    }

    return [...quickSort(menores), pivo, ...quickSort(maiores)];
  }
}

