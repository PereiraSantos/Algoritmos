import 'package:generos_nome_ordenacao/open_csv.dart';

void main(List<String> arguments) async {
  OpenCsv openCsv = OpenCsv();
  await openCsv.open();

  for (var e in openCsv.names) {
    print(e.name);
  }
}
