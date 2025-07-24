import 'dart:collection';

import 'package:produtos_hash/contoller.dart';
import 'package:produtos_hash/build_list.dart';
import 'package:produtos_hash/person.dart';

void main(List<String> arguments) {
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
