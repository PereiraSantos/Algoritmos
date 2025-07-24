import 'dart:collection';

import 'package:generos_nome_ordenacao/hash.dart';
import 'package:generos_nome_ordenacao/name.dart';

class CreateHashMap {
  Map<String, Name> hasHMapNames = HashMap();

  Future<void> create(List<dynamic> csv) async {
    for (var row in csv) {
      Name name = Name(name: row[0], sex: row[1], frequencyFemale: row[2], frequencyMale: row[3], frequencyTotal: row[4], nameSimilar: row[6]);

      final hash = _getHash(name.name);
      hasHMapNames.addAll({hash: name});
    }
  }

  _getHash(String value) => Hash().textToMd5(value);

  String getName(String value) {
    String hash = _getHash(value);
    if (hasHMapNames.containsKey(hash)) return hasHMapNames[hash]!.toString();
    return 'O nome  $value não existe na lista';
  }
}
