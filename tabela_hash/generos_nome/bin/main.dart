import 'dart:io';

import 'package:generos_nome_ordenacao/create_hash_map.dart';
import 'package:generos_nome_ordenacao/open_csv.dart';

void main(List<String> arguments) async {
  OpenCsv openCsv = OpenCsv();
  List<dynamic> listCsvs = await openCsv.openFile();

  CreateHashMap createHashMap = CreateHashMap();
  await createHashMap.create(listCsvs);

  inputUser(createHashMap);
}

void inputUser(CreateHashMap createHashMap) {
  print('***************************');

  print('Digite q para sair:');
  print('Pesquisa por: ');
  String? input = stdin.readLineSync();

  if (input == '' || input == 'q') return;

  String name = createHashMap.getName(input!.toUpperCase());
  print('***************************');
  print('RESULTADO');
  print('***************************');
  print(name);

  inputUser(createHashMap);
}
