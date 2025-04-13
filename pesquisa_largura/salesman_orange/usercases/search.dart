import 'dart:collection';

import '../model/person.dart';

class Search {
  Map<String, List<Person>> persons = HashMap();

  buildPerson() {
    persons.addAll({
      'Marciano': [Person('Alice'), Person('Bob'), Person('Claire')]
    });

    persons.addAll({
      'Bob': [Person('Anuj'), Person('Peggy')]
    });

    persons.addAll({
      'Alice': [Person('Peggy')]
    });

    persons.addAll({
      'Claire': [Person('Thon', saller: true), Person('Jonny')]
    });

    persons.addAll({'Anuj': []});
    persons.addAll({'Thon': []});
    persons.addAll({'Jonny': []});
  }

  Person? getSallerOrange() {
    List<Person> searchQueue = [];
    searchQueue.addAll(persons['Marciano']!.toList());

    List<Person> verified = [];

    while (searchQueue.isNotEmpty) {
      Person person = searchQueue.first;
      searchQueue.removeAt(0);

      if (!verified.contains(person)) {
        if (personSaller(person)) return person;

        searchQueue.addAll((persons[person.name]?.toList()) ?? []);
        verified.add(person);
      }
    }

    return null;
  }

  bool personSaller(Person person) => person.saller!;
}
