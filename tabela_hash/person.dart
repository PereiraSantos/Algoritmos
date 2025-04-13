import 'dart:collection';
import 'dart:convert';
import 'package:crypto/crypto.dart';

void main() {
  Map<String, Person> nomes = HashMap();

  ControllerPerson controllerPerson = ControllerPerson();
  BuildList().build();

  for (Person e in BuildList().build()) {
    nomes = controllerPerson.add(nomes, e);
  }

  print(controllerPerson.getPerson(nomes, 'PEDRO'));
  print(controllerPerson.getPerson(nomes, 'EDUARDO'));
  print(controllerPerson.getPerson(nomes, 'DIEGO'));
  print(controllerPerson.getPerson(nomes, 'MARIA'));
  print(controllerPerson.getPerson(nomes, 'WESLEY'));
}

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

class Hash {
  String textToMd5(String text) {
    return md5.convert(utf8.encode(text)).toString();
  }
}

class Person {
  String name;
  int region;
  double freq;
  int rank;
  String sexo;

  Person(this.name, this.region, this.freq, this.rank, this.sexo);

  @override
  String toString() {
    return 'Nome: $name, Região: $region Frequência: $freq Rank: $rank Sexo: $sexo';
  }
}

class BuildList {
  List<Person> build() {
    return [
      Person("JOSE", 0, 5732508, 1, "M"),
      Person("JOAO", 0, 2971935, 2, "M"),
      Person("ANTONIO", 0, 2567494, 3, "M"),
      Person("FRANCISCO", 0, 1765197, 4, "M"),
      Person("CARLOS", 0, 1483121, 5, "M"),
      Person("PAULO", 0, 1417907, 6, "M"),
      Person("PEDRO", 0, 1213557, 7, "M"),
      Person("LUCAS", 0, 1116818, 8, "M"),
      Person("LUIZ", 0, 1102927, 9, "M"),
      Person("MARCOS", 0, 1101126, 10, "M"),
      Person("LUIS", 0, 931530, 11, "M"),
      Person("GABRIEL", 0, 922744, 12, "M"),
      Person("RAFAEL", 0, 814709, 13, "M"),
      Person("DANIEL", 0, 706527, 14, "M"),
      Person("MARCELO", 0, 690098, 15, "M"),
      Person("BRUNO", 0, 663271, 16, "M"),
      Person("EDUARDO", 0, 628539, 17, "M"),
      Person("FELIPE", 0, 615924, 18, "M"),
      Person("RAIMUNDO", 0, 611174, 19, "M"),
      Person("RODRIGO", 0, 598825, 20, "M"),
      Person("MANOEL", 0, 590924, 21, "M"),
      Person("MATEUS", 0, 583962, 22, "M"),
      Person("ANDRE", 0, 578975, 23, "M"),
      Person("FERNANDO", 0, 551776, 24, "M"),
      Person("FABIO", 0, 545581, 25, "M"),
      Person("LEONARDO", 0, 544258, 26, "M"),
      Person("GUSTAVO", 0, 537598, 27, "M"),
      Person("GUILHERME", 0, 525028, 28, "M"),
      Person("LEANDRO", 0, 506483, 29, "M"),
      Person("TIAGO", 0, 492149, 30, "M"),
      Person("ANDERSON", 0, 470777, 31, "M"),
      Person("RICARDO", 0, 467835, 32, "M"),
      Person("MARCIO", 0, 466140, 33, "M"),
      Person("JORGE", 0, 464573, 34, "M"),
      Person("SEBASTIAO", 0, 461332, 35, "M"),
      Person("ALEXANDRE", 0, 441663, 36, "M"),
      Person("ROBERTO", 0, 435832, 37, "M"),
      Person("EDSON", 0, 430171, 38, "M"),
      Person("DIEGO", 0, 421973, 39, "M"),
      Person("VITOR", 0, 419585, 40, "M"),
      Person("SERGIO", 0, 403806, 41, "M"),
      Person("CLAUDIO", 0, 350428, 42, "M"),
      Person("MATHEUS", 0, 347734, 43, "M"),
      Person("THIAGO", 0, 341645, 44, "M"),
      Person("GERALDO", 0, 339380, 45, "M"),
      Person("ADRIANO", 0, 335585, 46, "M"),
      Person("LUCIANO", 0, 335214, 47, "M"),
      Person("JULIO", 0, 334254, 48, "M"),
      Person("RENATO", 0, 327610, 49, "M"),
      Person("ALEX", 0, 309181, 50, "M"),
      Person("VINICIUS", 0, 302419, 51, "M"),
      Person("ROGERIO", 0, 292635, 52, "M"),
      Person("SAMUEL", 0, 291057, 53, "M"),
      Person("RONALDO", 0, 269489, 54, "M"),
      Person("MARIO", 0, 268171, 55, "M"),
      Person("FLAVIO", 0, 265201, 56, "M"),
      Person("DOUGLAS", 0, 264889, 57, "M"),
      Person("IGOR", 0, 264732, 58, "M"),
      Person("DAVI", 0, 254088, 59, "M"),
      Person("MANUEL", 0, 253031, 60, "M"),
      Person("JEFERSON", 0, 252171, 61, "M"),
      Person("CICERO", 0, 247711, 62, "M"),
      Person("VICTOR", 0, 240278, 63, "M"),
      Person("MIGUEL", 0, 239636, 64, "M"),
      Person("ROBSON", 0, 235386, 65, "M"),
      Person("MAURICIO", 0, 234847, 66, "M"),
      Person("DANILO", 0, 231855, 67, "M"),
      Person("HENRIQUE", 0, 227297, 68, "M"),
      Person("CAIO", 0, 225902, 69, "M"),
      Person("REGINALDO", 0, 225049, 70, "M"),
      Person("JOAQUIM", 0, 213941, 71, "M"),
      Person("BENEDITO", 0, 213323, 72, "M"),
      Person("GILBERTO", 0, 212736, 73, "M"),
      Person("MARCO", 0, 207244, 74, "M"),
      Person("ALAN", 0, 205614, 75, "M"),
      Person("NELSON", 0, 200125, 76, "M"),
      Person("CRISTIANO", 0, 194300, 77, "M"),
      Person("ELIAS", 0, 189315, 78, "M"),
      Person("WILSON", 0, 188329, 79, "M"),
      Person("VALDIR", 0, 187067, 80, "M"),
      Person("EMERSON", 0, 177092, 81, "M"),
      Person("LUAN", 0, 174805, 82, "M"),
      Person("DAVID", 0, 173807, 83, "M"),
      Person("RENAN", 0, 170182, 84, "M"),
      Person("SEVERINO", 0, 170111, 85, "M"),
      Person("FABRICIO", 0, 166678, 86, "M"),
      Person("MAURO", 0, 166334, 87, "M"),
      Person("JONAS", 0, 163947, 88, "M"),
      Person("GILMAR", 0, 159693, 89, "M"),
      Person("JEAN", 0, 158198, 90, "M"),
      Person("FABIANO", 0, 157812, 91, "M"),
      Person("WESLEY", 0, 156101, 92, "M"),
      Person("DIOGO", 0, 155247, 93, "M"),
      Person("ADILSON", 0, 155002, 94, "M"),
      Person("JAIR", 0, 151241, 95, "M"),
      Person("ALESSANDRO", 0, 148702, 96, "M"),
      Person("EVERTON", 0, 147274, 97, "M"),
      Person("OSVALDO", 0, 146986, 98, "M"),
      Person("GILSON", 0, 144341, 99, "M"),
    ];
  }
}
