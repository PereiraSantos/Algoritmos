import 'package:generos_nomes/name.dart';
import 'package:generos_nomes/open_csv.dart';
import 'package:test/test.dart';

void main() async {
  OpenCsv openCsv = OpenCsv();
  await openCsv.open();

  test('Espero que retorne um nome', () {
    String? input = 'maria';
    Name? name = openCsv.getName(input.toUpperCase());

    expect(name?.name, 'MARIA');
  });

  test('Espero que não retorne um nome', () {
    String? input = 'aaa';
    Name? name = openCsv.getName(input.toUpperCase());

    expect(name?.name, null);
  });
}
