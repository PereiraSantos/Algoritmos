import 'package:generos_nome_ordenacao/name.dart';

class Ordination {
  List<Name> order(List<Name> list) {
    List<Name> newList = [];

    for (var i = 0; i < list.length; i++) {
      int smaller = _searchSmaller(list);
      newList.add(list[smaller]);
      list.removeAt(smaller);
    }
    return newList;
  }

  int _searchSmaller(List<Name> list) {
    int smaller = list[0].name.length;
    int smallerIndix = 0;

    for (var i = 0; i < list.length; i++) {
      if (list[i].name.length < smaller) {
        smaller = list[i].name.length;
        smallerIndix = i;
      }
    }

    return smallerIndix;
  }
}
