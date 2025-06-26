import 'package:generos_nomes/name.dart';

class BinarySearch {
  int? search(List<Name> list, String name) {
    int smallerIndex = 0;
    int biggerIndex = list.length - 1;

    while (smallerIndex <= biggerIndex) {
      var middleIndex = ((smallerIndex + biggerIndex) ~/ 2);
      var middle = list[middleIndex];

      if (middle.name == name) return middleIndex;

      if (middle.name.compareTo(name) > 0) {
        biggerIndex = middleIndex - 1;
      } else {
        smallerIndex = middleIndex + 1;
      }
    }

    return null;
  }
}
