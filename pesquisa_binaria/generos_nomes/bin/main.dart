import 'dart:io';

import 'package:generos_nomes/name.dart';
import 'package:generos_nomes/open_csv.dart';

void main(List<String> arguments) async {
  OpenCsv openCsv = OpenCsv();
  await openCsv.open();

  print("Digite um nome?");
  String? input = stdin.readLineSync();

  if (input != null) {
    Name? name = openCsv.getName(input.toUpperCase());

    if (name != null) {
      print('**********************************');
      print(name.toString());
      print('**********************************');
    } else {
      print('Nome não encontrado');
    }
  }
}
