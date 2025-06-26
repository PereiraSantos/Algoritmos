import 'dart:io';
import 'package:csv/csv.dart';
import 'package:generos_nomes/binary_search.dart';
import 'package:generos_nomes/name.dart';

class OpenCsv {
  List<Name> names = [];

  Future<List<dynamic>> _openFile() async {
    var arquivo = File("assets/grupos.csv");
    var input = await arquivo.readAsString();
    final fields = const CsvToListConverter().convert(input);

    return fields;
  }

  Future<void> open() async {
    List<dynamic> csv = await _openFile();

    for (var row in csv) {
      names.add(Name(name: row[0], sex: row[1], frequencyFemale: row[2], frequencyMale: row[3], frequencyTotal: row[4], nameSimilar: row[6]));
    }

    names.sort((a, b) => a.name.compareTo(b.name));
  }

  Name? getName(String name) {
    BinarySearch binarySearch = BinarySearch();
    int? index = binarySearch.search(names, name);

    if (index == null) return null;

    return names[index];
  }
}
