import 'dart:io';
import 'package:csv/csv.dart';

class OpenCsv {
  Future<List<dynamic>> openFile() async {
    var arquivo = File("assets/grupos.csv");
    var input = await arquivo.readAsString();
    final fields = const CsvToListConverter().convert(input);

    return fields;
  }
}
