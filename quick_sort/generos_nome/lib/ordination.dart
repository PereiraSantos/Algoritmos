import 'package:generos_nome_ordenacao/name.dart';

class Ordination {
  List<Name> order(List<Name> list) {
    _quicksort(list, 0, list.length - 1);
    return list;
  }

  void _quicksort(List<Name> list, int low, int high) {
    if (low < high) {
      int pivo = _partition(list, low, high);

      _quicksort(list, low, pivo - 1);
      _quicksort(list, pivo + 1, high);
    }
  }

  int _partition(List<Name> list, int low, int high) {
    String pivot = list[high].name;
    int i = (low - 1);

    for (int j = low; j < high; j++) {
      if (list[j].name.compareTo(pivot) <= 0) {
        i++;

        var temp = list[i];
        list[i] = list[j];
        list[j] = temp;
      }
    }

    var temp = list[i + 1];
    list[i + 1] = list[high];
    list[high] = temp;

    return i + 1;
  }
}
