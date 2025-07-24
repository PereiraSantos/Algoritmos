import 'package:produtos_hash/hash.dart';
import 'package:produtos_hash/person.dart';

class ControllerPerson {
  Map<String, Person> add(Map<String, Person> nomes, Person pessoa) {
    final hash = getHash(pessoa.name);

    nomes.addAll({hash: pessoa});
    return nomes;
  }

  String getHash(String value) {
    return Hash().textToMd5(value);
  }

  String getPerson(Map<String, Person> nomes, String value) {
    String hash = getHash(value);
    if (nomes.containsKey(hash)) return nomes[hash]!.toString();
    return 'A pessoa $value não existe na lista';
  }
}
